#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/netfilter.h>
#include <linux/netfilter_ipv4.h>
#include <linux/ip.h>
#include <linux/tcp.h>
#include <linux/ktime.h>
#include <linux/jiffies.h>
#include <linux/uaccess.h>
#include <linux/inet.h>
#include <linux/skbuff.h>
#include <linux/net.h>
#include <linux/inet.h>
#include <linux/if_ether.h>

MODULE_LICENSE("GPL");
MODULE_AUTHOR("jackdunf@buffalo.edu");
MODULE_DESCRIPTION("Simple Netfilter module to block all traffic when instructed");

static unsigned int filter(void *priv, struct sk_buff *skb, const struct nf_hook_state *state);
extern int rt_should_drop_packets(void);

// Netfilter hook options
static struct nf_hook_ops nfho;

static unsigned int filter(void *priv, struct sk_buff *skb, const struct nf_hook_state *state) {
    struct iphdr *iph;

    // Get IP header
    iph = ip_hdr(skb);
    if (!iph)
        return NF_ACCEPT;
    
    if (rt_should_drop_packets())
        return NF_DROP;
    return NF_ACCEPT;
}

static int __init init_lockdown(void) {
    printk(KERN_INFO "Loading lockdownk...\n");

    // Fill in the nf_hook_ops structure
    nfho.hook = filter;                         // Hook function
    nfho.hooknum = NF_INET_LOCAL_OUT;            // Apply to outgoing packets
    nfho.pf = PF_INET;                          // IPv4
    nfho.priority = NF_IP_PRI_FIRST;            // Set highest priority

    // Register the hook
    nf_register_net_hook(&init_net, &nfho);
    printk(KERN_INFO "lockdownk loaded.\n");

    return 0;
}

// Module cleanup
static void __exit exit_lockdown(void) {
    printk(KERN_INFO "Unloading lockdownk...\n");
    nf_unregister_net_hook(&init_net, &nfho);
    printk(KERN_INFO "HTTP lockdownk.\n");
}

module_init(init_lockdown);
module_exit(exit_lockdown);