savedcmd_interfacek.mod.o := gcc -Wp,-MMD,./.interfacek.mod.o.d -nostdinc -I/build/linux-6.13.7/arch/x86/include -I/build/linux-6.13.7/arch/x86/include/generated -I/build/linux-6.13.7/include -I/build/linux-6.13.7/include -I/build/linux-6.13.7/arch/x86/include/uapi -I/build/linux-6.13.7/arch/x86/include/generated/uapi -I/build/linux-6.13.7/include/uapi -I/build/linux-6.13.7/include/generated/uapi -include /build/linux-6.13.7/include/linux/compiler-version.h -include /build/linux-6.13.7/include/linux/kconfig.h -include /build/linux-6.13.7/include/linux/compiler_types.h -D__KERNEL__ -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=none -m64 -falign-jumps=1 -falign-loops=1 -mno-80387 -mno-fp-ret-in-387 -mpreferred-stack-boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mindirect-branch=thunk-extern -mindirect-branch-register -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fno-jump-tables -mharden-sls=all -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O2 -fno-allow-store-data-races -fstack-protector-strong -fno-omit-frame-pointer -fno-optimize-sibling-calls -ftrivial-auto-var-init=zero -fno-stack-clash-protection -fzero-call-used-regs=used-gpr -pg -mrecord-mcount -mfentry -DCC_USING_FENTRY -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -fconserve-stack -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wmissing-declarations -Wmissing-prototypes -Wframe-larger-than=1024 -Wno-main -Wno-dangling-pointer -Wvla -Wno-pointer-sign -Wcast-function-type -Wno-stringop-overflow -Wno-array-bounds -Wno-alloc-size-larger-than -Wimplicit-fallthrough=5 -Werror=date-time -Werror=incompatible-pointer-types -Werror=designated-init -Wenum-conversion -Wextra -Wunused -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-packed-not-aligned -Wno-format-overflow -Wno-format-truncation -Wno-stringop-truncation -Wno-override-init -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-maybe-uninitialized -Wno-sign-compare -Wno-unused-parameter -g -gdwarf-5  -fsanitize=bounds-strict -fsanitize=shift -fsanitize=bool -fsanitize=enum  -fsanitize=signed-integer-overflow  -DMODULE  -DKBUILD_BASENAME='"interfacek.mod"' -DKBUILD_MODNAME='"interfacek"' -D__KBUILD_MODNAME=kmod_interfacek -c -o interfacek.mod.o interfacek.mod.c   ; /build/linux-6.13.7/tools/objtool/objtool --hacks=jump_label --hacks=noinstr --hacks=skylake --retpoline --rethunk --sls --stackval --static-call --uaccess --prefix=16   --module interfacek.mod.o

source_interfacek.mod.o := interfacek.mod.c

deps_interfacek.mod.o := \
    $(wildcard include/config/MODULE_UNLOAD) \
  /build/linux-6.13.7/include/linux/compiler-version.h \
    $(wildcard include/config/CC_VERSION_TEXT) \
  /build/linux-6.13.7/include/linux/kconfig.h \
    $(wildcard include/config/CPU_BIG_ENDIAN) \
    $(wildcard include/config/BOOGER) \
    $(wildcard include/config/FOO) \
  /build/linux-6.13.7/include/linux/compiler_types.h \
    $(wildcard include/config/DEBUG_INFO_BTF) \
    $(wildcard include/config/PAHOLE_HAS_BTF_TAG) \
    $(wildcard include/config/FUNCTION_ALIGNMENT) \
    $(wildcard include/config/CC_HAS_SANE_FUNCTION_ALIGNMENT) \
    $(wildcard include/config/X86_64) \
    $(wildcard include/config/ARM64) \
    $(wildcard include/config/LD_DEAD_CODE_DATA_ELIMINATION) \
    $(wildcard include/config/LTO_CLANG) \
    $(wildcard include/config/HAVE_ARCH_COMPILER_H) \
    $(wildcard include/config/CC_HAS_COUNTED_BY) \
    $(wildcard include/config/UBSAN_SIGNED_WRAP) \
    $(wildcard include/config/CC_HAS_ASM_INLINE) \
  /build/linux-6.13.7/include/linux/compiler_attributes.h \
  /build/linux-6.13.7/include/linux/compiler-gcc.h \
    $(wildcard include/config/MITIGATION_RETPOLINE) \
    $(wildcard include/config/ARCH_USE_BUILTIN_BSWAP) \
    $(wildcard include/config/SHADOW_CALL_STACK) \
    $(wildcard include/config/KCOV) \
  /build/linux-6.13.7/include/linux/module.h \
    $(wildcard include/config/MODULES) \
    $(wildcard include/config/SYSFS) \
    $(wildcard include/config/MODULES_TREE_LOOKUP) \
    $(wildcard include/config/LIVEPATCH) \
    $(wildcard include/config/STACKTRACE_BUILD_ID) \
    $(wildcard include/config/ARCH_USES_CFI_TRAPS) \
    $(wildcard include/config/MODULE_SIG) \
    $(wildcard include/config/GENERIC_BUG) \
    $(wildcard include/config/KALLSYMS) \
    $(wildcard include/config/SMP) \
    $(wildcard include/config/TRACEPOINTS) \
    $(wildcard include/config/TREE_SRCU) \
    $(wildcard include/config/BPF_EVENTS) \
    $(wildcard include/config/DEBUG_INFO_BTF_MODULES) \
    $(wildcard include/config/JUMP_LABEL) \
    $(wildcard include/config/TRACING) \
    $(wildcard include/config/EVENT_TRACING) \
    $(wildcard include/config/FTRACE_MCOUNT_RECORD) \
    $(wildcard include/config/KPROBES) \
    $(wildcard include/config/HAVE_STATIC_CALL_INLINE) \
    $(wildcard include/config/KUNIT) \
    $(wildcard include/config/PRINTK_INDEX) \
    $(wildcard include/config/CONSTRUCTORS) \
    $(wildcard include/config/FUNCTION_ERROR_INJECTION) \
    $(wildcard include/config/DYNAMIC_DEBUG_CORE) \
    $(wildcard include/config/ARCH_HAS_EXECMEM_ROX) \
  /build/linux-6.13.7/include/linux/list.h \
    $(wildcard include/config/LIST_HARDENED) \
    $(wildcard include/config/DEBUG_LIST) \
  /build/linux-6.13.7/include/linux/container_of.h \
  /build/linux-6.13.7/include/linux/build_bug.h \
  /build/linux-6.13.7/include/linux/compiler.h \
    $(wildcard include/config/TRACE_BRANCH_PROFILING) \
    $(wildcard include/config/PROFILE_ALL_BRANCHES) \
    $(wildcard include/config/OBJTOOL) \
    $(wildcard include/config/64BIT) \
  /build/linux-6.13.7/arch/x86/include/generated/asm/rwonce.h \
  /build/linux-6.13.7/include/asm-generic/rwonce.h \
  /build/linux-6.13.7/include/linux/kasan-checks.h \
    $(wildcard include/config/KASAN_GENERIC) \
    $(wildcard include/config/KASAN_SW_TAGS) \
  /build/linux-6.13.7/include/linux/types.h \
    $(wildcard include/config/HAVE_UID16) \
    $(wildcard include/config/UID16) \
    $(wildcard include/config/ARCH_DMA_ADDR_T_64BIT) \
    $(wildcard include/config/PHYS_ADDR_T_64BIT) \
    $(wildcard include/config/ARCH_32BIT_USTAT_F_TINODE) \
  /build/linux-6.13.7/include/uapi/linux/types.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/types.h \
  /build/linux-6.13.7/include/uapi/asm-generic/types.h \
  /build/linux-6.13.7/include/asm-generic/int-ll64.h \
  /build/linux-6.13.7/include/uapi/asm-generic/int-ll64.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/bitsperlong.h \
  /build/linux-6.13.7/include/asm-generic/bitsperlong.h \
  /build/linux-6.13.7/include/uapi/asm-generic/bitsperlong.h \
  /build/linux-6.13.7/include/uapi/linux/posix_types.h \
  /build/linux-6.13.7/include/linux/stddef.h \
  /build/linux-6.13.7/include/uapi/linux/stddef.h \
  /build/linux-6.13.7/arch/x86/include/asm/posix_types.h \
    $(wildcard include/config/X86_32) \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/posix_types_64.h \
  /build/linux-6.13.7/include/uapi/asm-generic/posix_types.h \
  /build/linux-6.13.7/include/linux/kcsan-checks.h \
    $(wildcard include/config/KCSAN) \
    $(wildcard include/config/KCSAN_WEAK_MEMORY) \
    $(wildcard include/config/KCSAN_IGNORE_ATOMICS) \
  /build/linux-6.13.7/include/linux/poison.h \
    $(wildcard include/config/ILLEGAL_POINTER_VALUE) \
  /build/linux-6.13.7/include/linux/const.h \
  /build/linux-6.13.7/include/vdso/const.h \
  /build/linux-6.13.7/include/uapi/linux/const.h \
  /build/linux-6.13.7/arch/x86/include/asm/barrier.h \
  /build/linux-6.13.7/arch/x86/include/asm/alternative.h \
    $(wildcard include/config/CALL_THUNKS) \
  /build/linux-6.13.7/include/linux/stringify.h \
  /build/linux-6.13.7/arch/x86/include/asm/asm.h \
  /build/linux-6.13.7/arch/x86/include/asm/extable_fixup_types.h \
  /build/linux-6.13.7/arch/x86/include/asm/nops.h \
  /build/linux-6.13.7/include/asm-generic/barrier.h \
  /build/linux-6.13.7/include/linux/stat.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/stat.h \
  /build/linux-6.13.7/include/uapi/linux/stat.h \
  /build/linux-6.13.7/include/linux/time.h \
    $(wildcard include/config/POSIX_TIMERS) \
  /build/linux-6.13.7/include/linux/cache.h \
    $(wildcard include/config/ARCH_HAS_CACHE_LINE_SIZE) \
  /build/linux-6.13.7/include/uapi/linux/kernel.h \
  /build/linux-6.13.7/include/uapi/linux/sysinfo.h \
  /build/linux-6.13.7/arch/x86/include/asm/cache.h \
    $(wildcard include/config/X86_L1_CACHE_SHIFT) \
    $(wildcard include/config/X86_INTERNODE_CACHE_SHIFT) \
    $(wildcard include/config/X86_VSMP) \
  /build/linux-6.13.7/include/linux/linkage.h \
    $(wildcard include/config/ARCH_USE_SYM_ANNOTATIONS) \
  /build/linux-6.13.7/include/linux/export.h \
    $(wildcard include/config/MODVERSIONS) \
  /build/linux-6.13.7/arch/x86/include/asm/linkage.h \
    $(wildcard include/config/CALL_PADDING) \
    $(wildcard include/config/MITIGATION_RETHUNK) \
    $(wildcard include/config/MITIGATION_SLS) \
    $(wildcard include/config/FUNCTION_PADDING_BYTES) \
    $(wildcard include/config/UML) \
  /build/linux-6.13.7/arch/x86/include/asm/ibt.h \
    $(wildcard include/config/X86_KERNEL_IBT) \
  /build/linux-6.13.7/include/linux/math64.h \
    $(wildcard include/config/ARCH_SUPPORTS_INT128) \
  /build/linux-6.13.7/include/linux/math.h \
  /build/linux-6.13.7/arch/x86/include/asm/div64.h \
  /build/linux-6.13.7/include/asm-generic/div64.h \
    $(wildcard include/config/CC_OPTIMIZE_FOR_PERFORMANCE) \
  /build/linux-6.13.7/include/vdso/math64.h \
  /build/linux-6.13.7/include/linux/time64.h \
  /build/linux-6.13.7/include/vdso/time64.h \
  /build/linux-6.13.7/include/uapi/linux/time.h \
  /build/linux-6.13.7/include/uapi/linux/time_types.h \
  /build/linux-6.13.7/include/linux/time32.h \
  /build/linux-6.13.7/include/linux/timex.h \
  /build/linux-6.13.7/include/uapi/linux/timex.h \
  /build/linux-6.13.7/include/uapi/linux/param.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/param.h \
  /build/linux-6.13.7/include/asm-generic/param.h \
    $(wildcard include/config/HZ) \
  /build/linux-6.13.7/include/uapi/asm-generic/param.h \
  /build/linux-6.13.7/arch/x86/include/asm/timex.h \
    $(wildcard include/config/X86_TSC) \
  /build/linux-6.13.7/arch/x86/include/asm/processor.h \
    $(wildcard include/config/X86_VMX_FEATURE_NAMES) \
    $(wildcard include/config/X86_IOPL_IOPERM) \
    $(wildcard include/config/STACKPROTECTOR) \
    $(wildcard include/config/VM86) \
    $(wildcard include/config/X86_USER_SHADOW_STACK) \
    $(wildcard include/config/USE_X86_SEG_SUPPORT) \
    $(wildcard include/config/PARAVIRT_XXL) \
    $(wildcard include/config/CPU_SUP_AMD) \
    $(wildcard include/config/XEN) \
  /build/linux-6.13.7/arch/x86/include/asm/processor-flags.h \
    $(wildcard include/config/MITIGATION_PAGE_TABLE_ISOLATION) \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/processor-flags.h \
  /build/linux-6.13.7/include/linux/mem_encrypt.h \
    $(wildcard include/config/ARCH_HAS_MEM_ENCRYPT) \
    $(wildcard include/config/AMD_MEM_ENCRYPT) \
  /build/linux-6.13.7/arch/x86/include/asm/mem_encrypt.h \
    $(wildcard include/config/X86_MEM_ENCRYPT) \
  /build/linux-6.13.7/include/linux/init.h \
    $(wildcard include/config/MEMORY_HOTPLUG) \
    $(wildcard include/config/HAVE_ARCH_PREL32_RELOCATIONS) \
  /build/linux-6.13.7/include/linux/cc_platform.h \
    $(wildcard include/config/ARCH_HAS_CC_PLATFORM) \
  /build/linux-6.13.7/arch/x86/include/asm/math_emu.h \
  /build/linux-6.13.7/arch/x86/include/asm/ptrace.h \
    $(wildcard include/config/PARAVIRT) \
    $(wildcard include/config/IA32_EMULATION) \
    $(wildcard include/config/X86_DEBUGCTLMSR) \
  /build/linux-6.13.7/arch/x86/include/asm/segment.h \
    $(wildcard include/config/XEN_PV) \
  /build/linux-6.13.7/arch/x86/include/asm/page_types.h \
    $(wildcard include/config/PHYSICAL_START) \
    $(wildcard include/config/PHYSICAL_ALIGN) \
    $(wildcard include/config/DYNAMIC_PHYSICAL_MASK) \
  /build/linux-6.13.7/include/vdso/page.h \
    $(wildcard include/config/PAGE_SHIFT) \
  /build/linux-6.13.7/arch/x86/include/asm/page_64_types.h \
    $(wildcard include/config/KASAN) \
    $(wildcard include/config/DYNAMIC_MEMORY_LAYOUT) \
    $(wildcard include/config/X86_5LEVEL) \
    $(wildcard include/config/RANDOMIZE_BASE) \
  /build/linux-6.13.7/arch/x86/include/asm/kaslr.h \
    $(wildcard include/config/RANDOMIZE_MEMORY) \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/ptrace.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/ptrace-abi.h \
  /build/linux-6.13.7/arch/x86/include/asm/paravirt_types.h \
    $(wildcard include/config/PGTABLE_LEVELS) \
    $(wildcard include/config/ZERO_CALL_USED_REGS) \
    $(wildcard include/config/PARAVIRT_DEBUG) \
  /build/linux-6.13.7/arch/x86/include/asm/desc_defs.h \
  /build/linux-6.13.7/arch/x86/include/asm/pgtable_types.h \
    $(wildcard include/config/X86_INTEL_MEMORY_PROTECTION_KEYS) \
    $(wildcard include/config/X86_PAE) \
    $(wildcard include/config/MEM_SOFT_DIRTY) \
    $(wildcard include/config/HAVE_ARCH_USERFAULTFD_WP) \
    $(wildcard include/config/PROC_FS) \
  /build/linux-6.13.7/arch/x86/include/asm/pgtable_64_types.h \
    $(wildcard include/config/KMSAN) \
    $(wildcard include/config/DEBUG_KMAP_LOCAL_FORCE_MAP) \
  /build/linux-6.13.7/arch/x86/include/asm/sparsemem.h \
    $(wildcard include/config/SPARSEMEM) \
  /build/linux-6.13.7/arch/x86/include/asm/nospec-branch.h \
    $(wildcard include/config/CALL_THUNKS_DEBUG) \
    $(wildcard include/config/MITIGATION_CALL_DEPTH_TRACKING) \
    $(wildcard include/config/NOINSTR_VALIDATION) \
    $(wildcard include/config/MITIGATION_UNRET_ENTRY) \
    $(wildcard include/config/MITIGATION_SRSO) \
    $(wildcard include/config/MITIGATION_IBPB_ENTRY) \
  /build/linux-6.13.7/include/linux/static_key.h \
  /build/linux-6.13.7/include/linux/jump_label.h \
    $(wildcard include/config/HAVE_ARCH_JUMP_LABEL_RELATIVE) \
  /build/linux-6.13.7/arch/x86/include/asm/jump_label.h \
    $(wildcard include/config/HAVE_JUMP_LABEL_HACK) \
  /build/linux-6.13.7/include/linux/objtool.h \
    $(wildcard include/config/FRAME_POINTER) \
  /build/linux-6.13.7/include/linux/objtool_types.h \
  /build/linux-6.13.7/arch/x86/include/asm/cpufeatures.h \
  /build/linux-6.13.7/arch/x86/include/asm/required-features.h \
    $(wildcard include/config/X86_MINIMUM_CPU_FAMILY) \
    $(wildcard include/config/MATH_EMULATION) \
    $(wildcard include/config/X86_CMPXCHG64) \
    $(wildcard include/config/X86_CMOV) \
    $(wildcard include/config/X86_P6_NOP) \
    $(wildcard include/config/MATOM) \
  /build/linux-6.13.7/arch/x86/include/asm/disabled-features.h \
    $(wildcard include/config/X86_UMIP) \
    $(wildcard include/config/ADDRESS_MASKING) \
    $(wildcard include/config/INTEL_IOMMU_SVM) \
    $(wildcard include/config/X86_SGX) \
    $(wildcard include/config/INTEL_TDX_GUEST) \
    $(wildcard include/config/X86_FRED) \
    $(wildcard include/config/KVM_AMD_SEV) \
  /build/linux-6.13.7/arch/x86/include/asm/msr-index.h \
  /build/linux-6.13.7/include/linux/bits.h \
  /build/linux-6.13.7/include/vdso/bits.h \
  /build/linux-6.13.7/include/uapi/linux/bits.h \
  /build/linux-6.13.7/arch/x86/include/asm/unwind_hints.h \
  /build/linux-6.13.7/arch/x86/include/asm/orc_types.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/byteorder.h \
  /build/linux-6.13.7/include/linux/byteorder/little_endian.h \
  /build/linux-6.13.7/include/uapi/linux/byteorder/little_endian.h \
  /build/linux-6.13.7/include/linux/swab.h \
  /build/linux-6.13.7/include/uapi/linux/swab.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/swab.h \
  /build/linux-6.13.7/include/linux/byteorder/generic.h \
  /build/linux-6.13.7/arch/x86/include/asm/percpu.h \
    $(wildcard include/config/X86_64_SMP) \
    $(wildcard include/config/CC_HAS_NAMED_AS) \
  /build/linux-6.13.7/include/asm-generic/percpu.h \
    $(wildcard include/config/DEBUG_PREEMPT) \
    $(wildcard include/config/HAVE_SETUP_PER_CPU_AREA) \
  /build/linux-6.13.7/include/linux/threads.h \
    $(wildcard include/config/NR_CPUS) \
    $(wildcard include/config/BASE_SMALL) \
  /build/linux-6.13.7/include/linux/percpu-defs.h \
    $(wildcard include/config/DEBUG_FORCE_WEAK_PER_CPU) \
  /build/linux-6.13.7/arch/x86/include/asm/current.h \
  /build/linux-6.13.7/arch/x86/include/asm/asm-offsets.h \
  /build/linux-6.13.7/include/generated/asm-offsets.h \
  /build/linux-6.13.7/arch/x86/include/asm/GEN-for-each-reg.h \
  /build/linux-6.13.7/arch/x86/include/asm/spinlock_types.h \
  /build/linux-6.13.7/include/asm-generic/qspinlock_types.h \
  /build/linux-6.13.7/include/asm-generic/qrwlock_types.h \
  /build/linux-6.13.7/arch/x86/include/asm/proto.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/ldt.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/sigcontext.h \
  /build/linux-6.13.7/arch/x86/include/asm/cpuid.h \
  /build/linux-6.13.7/arch/x86/include/asm/string.h \
  /build/linux-6.13.7/arch/x86/include/asm/string_64.h \
    $(wildcard include/config/ARCH_HAS_UACCESS_FLUSHCACHE) \
  /build/linux-6.13.7/arch/x86/include/asm/paravirt.h \
    $(wildcard include/config/PARAVIRT_SPINLOCKS) \
    $(wildcard include/config/DEBUG_ENTRY) \
  /build/linux-6.13.7/include/linux/bug.h \
    $(wildcard include/config/BUG_ON_DATA_CORRUPTION) \
  /build/linux-6.13.7/arch/x86/include/asm/bug.h \
    $(wildcard include/config/DEBUG_BUGVERBOSE) \
  /build/linux-6.13.7/include/linux/instrumentation.h \
  /build/linux-6.13.7/include/asm-generic/bug.h \
    $(wildcard include/config/BUG) \
    $(wildcard include/config/GENERIC_BUG_RELATIVE_POINTERS) \
  /build/linux-6.13.7/include/linux/once_lite.h \
  /build/linux-6.13.7/include/linux/panic.h \
    $(wildcard include/config/PANIC_TIMEOUT) \
  /build/linux-6.13.7/include/linux/printk.h \
    $(wildcard include/config/MESSAGE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_DEFAULT) \
    $(wildcard include/config/CONSOLE_LOGLEVEL_QUIET) \
    $(wildcard include/config/EARLY_PRINTK) \
    $(wildcard include/config/PRINTK) \
    $(wildcard include/config/DYNAMIC_DEBUG) \
  /build/linux-6.13.7/include/linux/stdarg.h \
  /build/linux-6.13.7/include/linux/kern_levels.h \
  /build/linux-6.13.7/include/linux/ratelimit_types.h \
  /build/linux-6.13.7/include/linux/spinlock_types_raw.h \
    $(wildcard include/config/DEBUG_SPINLOCK) \
    $(wildcard include/config/DEBUG_LOCK_ALLOC) \
  /build/linux-6.13.7/include/linux/lockdep_types.h \
    $(wildcard include/config/PROVE_RAW_LOCK_NESTING) \
    $(wildcard include/config/LOCKDEP) \
    $(wildcard include/config/LOCK_STAT) \
  /build/linux-6.13.7/include/linux/dynamic_debug.h \
  /build/linux-6.13.7/include/linux/cpumask.h \
    $(wildcard include/config/FORCE_NR_CPUS) \
    $(wildcard include/config/HOTPLUG_CPU) \
    $(wildcard include/config/DEBUG_PER_CPU_MAPS) \
    $(wildcard include/config/CPUMASK_OFFSTACK) \
  /build/linux-6.13.7/include/linux/cleanup.h \
  /build/linux-6.13.7/include/linux/kernel.h \
    $(wildcard include/config/PREEMPT_VOLUNTARY_BUILD) \
    $(wildcard include/config/PREEMPT_DYNAMIC) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_CALL) \
    $(wildcard include/config/HAVE_PREEMPT_DYNAMIC_KEY) \
    $(wildcard include/config/PREEMPT_) \
    $(wildcard include/config/DEBUG_ATOMIC_SLEEP) \
    $(wildcard include/config/MMU) \
    $(wildcard include/config/PROVE_LOCKING) \
  /build/linux-6.13.7/include/linux/align.h \
  /build/linux-6.13.7/include/linux/array_size.h \
  /build/linux-6.13.7/include/linux/limits.h \
  /build/linux-6.13.7/include/uapi/linux/limits.h \
  /build/linux-6.13.7/include/vdso/limits.h \
  /build/linux-6.13.7/include/linux/bitops.h \
  /build/linux-6.13.7/include/linux/typecheck.h \
  /build/linux-6.13.7/include/asm-generic/bitops/generic-non-atomic.h \
  /build/linux-6.13.7/arch/x86/include/asm/bitops.h \
  /build/linux-6.13.7/arch/x86/include/asm/rmwcc.h \
  /build/linux-6.13.7/include/linux/args.h \
  /build/linux-6.13.7/include/asm-generic/bitops/sched.h \
  /build/linux-6.13.7/arch/x86/include/asm/arch_hweight.h \
  /build/linux-6.13.7/include/asm-generic/bitops/const_hweight.h \
  /build/linux-6.13.7/include/asm-generic/bitops/instrumented-atomic.h \
  /build/linux-6.13.7/include/linux/instrumented.h \
  /build/linux-6.13.7/include/linux/kmsan-checks.h \
  /build/linux-6.13.7/include/asm-generic/bitops/instrumented-non-atomic.h \
    $(wildcard include/config/KCSAN_ASSUME_PLAIN_WRITES_ATOMIC) \
  /build/linux-6.13.7/include/asm-generic/bitops/instrumented-lock.h \
  /build/linux-6.13.7/include/asm-generic/bitops/le.h \
  /build/linux-6.13.7/include/asm-generic/bitops/ext2-atomic-setbit.h \
  /build/linux-6.13.7/include/linux/hex.h \
  /build/linux-6.13.7/include/linux/kstrtox.h \
  /build/linux-6.13.7/include/linux/log2.h \
    $(wildcard include/config/ARCH_HAS_ILOG2_U32) \
    $(wildcard include/config/ARCH_HAS_ILOG2_U64) \
  /build/linux-6.13.7/include/linux/minmax.h \
  /build/linux-6.13.7/include/linux/sprintf.h \
  /build/linux-6.13.7/include/linux/static_call_types.h \
    $(wildcard include/config/HAVE_STATIC_CALL) \
  /build/linux-6.13.7/include/linux/instruction_pointer.h \
  /build/linux-6.13.7/include/linux/wordpart.h \
  /build/linux-6.13.7/include/linux/bitmap.h \
  /build/linux-6.13.7/include/linux/errno.h \
  /build/linux-6.13.7/include/uapi/linux/errno.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/errno.h \
  /build/linux-6.13.7/include/uapi/asm-generic/errno.h \
  /build/linux-6.13.7/include/uapi/asm-generic/errno-base.h \
  /build/linux-6.13.7/include/linux/find.h \
  /build/linux-6.13.7/include/linux/string.h \
    $(wildcard include/config/BINARY_PRINTF) \
    $(wildcard include/config/FORTIFY_SOURCE) \
  /build/linux-6.13.7/include/linux/err.h \
  /build/linux-6.13.7/include/linux/overflow.h \
  /build/linux-6.13.7/include/uapi/linux/string.h \
  /build/linux-6.13.7/include/linux/fortify-string.h \
    $(wildcard include/config/CC_HAS_KASAN_MEMINTRINSIC_PREFIX) \
    $(wildcard include/config/GENERIC_ENTRY) \
  /build/linux-6.13.7/include/linux/bitfield.h \
  /build/linux-6.13.7/include/linux/bitmap-str.h \
  /build/linux-6.13.7/include/linux/cpumask_types.h \
  /build/linux-6.13.7/include/linux/atomic.h \
  /build/linux-6.13.7/arch/x86/include/asm/atomic.h \
  /build/linux-6.13.7/arch/x86/include/asm/cmpxchg.h \
  /build/linux-6.13.7/arch/x86/include/asm/cmpxchg_64.h \
  /build/linux-6.13.7/arch/x86/include/asm/atomic64_64.h \
  /build/linux-6.13.7/include/linux/atomic/atomic-arch-fallback.h \
    $(wildcard include/config/GENERIC_ATOMIC64) \
  /build/linux-6.13.7/include/linux/atomic/atomic-long.h \
  /build/linux-6.13.7/include/linux/atomic/atomic-instrumented.h \
  /build/linux-6.13.7/include/linux/gfp_types.h \
    $(wildcard include/config/KASAN_HW_TAGS) \
    $(wildcard include/config/SLAB_OBJ_EXT) \
  /build/linux-6.13.7/include/linux/numa.h \
    $(wildcard include/config/NODES_SHIFT) \
    $(wildcard include/config/NUMA_KEEP_MEMINFO) \
    $(wildcard include/config/NUMA) \
    $(wildcard include/config/HAVE_ARCH_NODE_DEV_GROUP) \
  /build/linux-6.13.7/arch/x86/include/asm/frame.h \
  /build/linux-6.13.7/arch/x86/include/asm/page.h \
  /build/linux-6.13.7/arch/x86/include/asm/page_64.h \
    $(wildcard include/config/DEBUG_VIRTUAL) \
    $(wildcard include/config/X86_VSYSCALL_EMULATION) \
  /build/linux-6.13.7/include/linux/range.h \
  /build/linux-6.13.7/include/asm-generic/memory_model.h \
    $(wildcard include/config/FLATMEM) \
    $(wildcard include/config/SPARSEMEM_VMEMMAP) \
  /build/linux-6.13.7/include/linux/pfn.h \
  /build/linux-6.13.7/include/asm-generic/getorder.h \
  /build/linux-6.13.7/arch/x86/include/asm/special_insns.h \
  /build/linux-6.13.7/include/linux/irqflags.h \
    $(wildcard include/config/TRACE_IRQFLAGS) \
    $(wildcard include/config/PREEMPT_RT) \
    $(wildcard include/config/IRQSOFF_TRACER) \
    $(wildcard include/config/PREEMPT_TRACER) \
    $(wildcard include/config/DEBUG_IRQFLAGS) \
    $(wildcard include/config/TRACE_IRQFLAGS_SUPPORT) \
  /build/linux-6.13.7/include/linux/irqflags_types.h \
  /build/linux-6.13.7/arch/x86/include/asm/irqflags.h \
  /build/linux-6.13.7/arch/x86/include/asm/fpu/types.h \
  /build/linux-6.13.7/arch/x86/include/asm/vmxfeatures.h \
  /build/linux-6.13.7/arch/x86/include/asm/vdso/processor.h \
  /build/linux-6.13.7/arch/x86/include/asm/shstk.h \
  /build/linux-6.13.7/include/linux/personality.h \
  /build/linux-6.13.7/include/uapi/linux/personality.h \
  /build/linux-6.13.7/arch/x86/include/asm/tsc.h \
  /build/linux-6.13.7/arch/x86/include/asm/cpufeature.h \
  /build/linux-6.13.7/arch/x86/include/asm/msr.h \
  /build/linux-6.13.7/arch/x86/include/asm/cpumask.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/msr.h \
  /build/linux-6.13.7/include/uapi/linux/ioctl.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/ioctl.h \
  /build/linux-6.13.7/include/asm-generic/ioctl.h \
  /build/linux-6.13.7/include/uapi/asm-generic/ioctl.h \
  /build/linux-6.13.7/arch/x86/include/asm/shared/msr.h \
  /build/linux-6.13.7/include/linux/percpu.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING) \
    $(wildcard include/config/RANDOM_KMALLOC_CACHES) \
    $(wildcard include/config/PAGE_SIZE_4KB) \
    $(wildcard include/config/NEED_PER_CPU_PAGE_FIRST_CHUNK) \
  /build/linux-6.13.7/include/linux/alloc_tag.h \
    $(wildcard include/config/MEM_ALLOC_PROFILING_DEBUG) \
    $(wildcard include/config/MEM_ALLOC_PROFILING_ENABLED_BY_DEFAULT) \
  /build/linux-6.13.7/include/linux/codetag.h \
    $(wildcard include/config/CODE_TAGGING) \
  /build/linux-6.13.7/include/linux/preempt.h \
    $(wildcard include/config/PREEMPT_COUNT) \
    $(wildcard include/config/TRACE_PREEMPT_TOGGLE) \
    $(wildcard include/config/PREEMPTION) \
    $(wildcard include/config/PREEMPT_NOTIFIERS) \
    $(wildcard include/config/PREEMPT_NONE) \
    $(wildcard include/config/PREEMPT_VOLUNTARY) \
    $(wildcard include/config/PREEMPT) \
    $(wildcard include/config/PREEMPT_LAZY) \
  /build/linux-6.13.7/arch/x86/include/asm/preempt.h \
  /build/linux-6.13.7/include/linux/smp.h \
    $(wildcard include/config/UP_LATE_INIT) \
    $(wildcard include/config/CSD_LOCK_WAIT_DEBUG) \
  /build/linux-6.13.7/include/linux/smp_types.h \
  /build/linux-6.13.7/include/linux/llist.h \
    $(wildcard include/config/ARCH_HAVE_NMI_SAFE_CMPXCHG) \
  /build/linux-6.13.7/include/linux/thread_info.h \
    $(wildcard include/config/THREAD_INFO_IN_TASK) \
    $(wildcard include/config/ARCH_HAS_PREEMPT_LAZY) \
    $(wildcard include/config/HAVE_ARCH_WITHIN_STACK_FRAMES) \
    $(wildcard include/config/HARDENED_USERCOPY) \
    $(wildcard include/config/SH) \
  /build/linux-6.13.7/include/linux/restart_block.h \
  /build/linux-6.13.7/arch/x86/include/asm/thread_info.h \
    $(wildcard include/config/COMPAT) \
  /build/linux-6.13.7/arch/x86/include/asm/smp.h \
    $(wildcard include/config/DEBUG_NMI_SELFTEST) \
  /build/linux-6.13.7/include/linux/mmdebug.h \
    $(wildcard include/config/DEBUG_VM) \
    $(wildcard include/config/DEBUG_VM_IRQSOFF) \
    $(wildcard include/config/DEBUG_VM_PGFLAGS) \
  /build/linux-6.13.7/include/linux/sched.h \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_NATIVE) \
    $(wildcard include/config/SCHED_INFO) \
    $(wildcard include/config/SCHEDSTATS) \
    $(wildcard include/config/SCHED_CORE) \
    $(wildcard include/config/FAIR_GROUP_SCHED) \
    $(wildcard include/config/RT_GROUP_SCHED) \
    $(wildcard include/config/RT_MUTEXES) \
    $(wildcard include/config/UCLAMP_TASK) \
    $(wildcard include/config/UCLAMP_BUCKETS_COUNT) \
    $(wildcard include/config/KMAP_LOCAL) \
    $(wildcard include/config/SCHED_CLASS_EXT) \
    $(wildcard include/config/CGROUP_SCHED) \
    $(wildcard include/config/BLK_DEV_IO_TRACE) \
    $(wildcard include/config/PREEMPT_RCU) \
    $(wildcard include/config/TASKS_RCU) \
    $(wildcard include/config/TASKS_TRACE_RCU) \
    $(wildcard include/config/MEMCG_V1) \
    $(wildcard include/config/LRU_GEN) \
    $(wildcard include/config/COMPAT_BRK) \
    $(wildcard include/config/CGROUPS) \
    $(wildcard include/config/BLK_CGROUP) \
    $(wildcard include/config/PSI) \
    $(wildcard include/config/PAGE_OWNER) \
    $(wildcard include/config/EVENTFD) \
    $(wildcard include/config/ARCH_HAS_CPU_PASID) \
    $(wildcard include/config/X86_BUS_LOCK_DETECT) \
    $(wildcard include/config/TASK_DELAY_ACCT) \
    $(wildcard include/config/ARCH_HAS_SCALED_CPUTIME) \
    $(wildcard include/config/VIRT_CPU_ACCOUNTING_GEN) \
    $(wildcard include/config/NO_HZ_FULL) \
    $(wildcard include/config/POSIX_CPUTIMERS) \
    $(wildcard include/config/POSIX_CPU_TIMERS_TASK_WORK) \
    $(wildcard include/config/KEYS) \
    $(wildcard include/config/SYSVIPC) \
    $(wildcard include/config/DETECT_HUNG_TASK) \
    $(wildcard include/config/IO_URING) \
    $(wildcard include/config/AUDIT) \
    $(wildcard include/config/AUDITSYSCALL) \
    $(wildcard include/config/DEBUG_MUTEXES) \
    $(wildcard include/config/UBSAN) \
    $(wildcard include/config/UBSAN_TRAP) \
    $(wildcard include/config/COMPACTION) \
    $(wildcard include/config/TASK_XACCT) \
    $(wildcard include/config/CPUSETS) \
    $(wildcard include/config/X86_CPU_RESCTRL) \
    $(wildcard include/config/FUTEX) \
    $(wildcard include/config/PERF_EVENTS) \
    $(wildcard include/config/NUMA_BALANCING) \
    $(wildcard include/config/RSEQ) \
    $(wildcard include/config/SCHED_MM_CID) \
    $(wildcard include/config/FAULT_INJECTION) \
    $(wildcard include/config/LATENCYTOP) \
    $(wildcard include/config/FUNCTION_GRAPH_TRACER) \
    $(wildcard include/config/MEMCG) \
    $(wildcard include/config/UPROBES) \
    $(wildcard include/config/BCACHE) \
    $(wildcard include/config/VMAP_STACK) \
    $(wildcard include/config/SECURITY) \
    $(wildcard include/config/BPF_SYSCALL) \
    $(wildcard include/config/GCC_PLUGIN_STACKLEAK) \
    $(wildcard include/config/X86_MCE) \
    $(wildcard include/config/KRETPROBES) \
    $(wildcard include/config/RETHOOK) \
    $(wildcard include/config/ARCH_HAS_PARANOID_L1D_FLUSH) \
    $(wildcard include/config/RV) \
    $(wildcard include/config/USER_EVENTS) \
  /build/linux-6.13.7/include/uapi/linux/sched.h \
  /build/linux-6.13.7/include/linux/pid_types.h \
  /build/linux-6.13.7/include/linux/sem_types.h \
  /build/linux-6.13.7/include/linux/shm.h \
  /build/linux-6.13.7/arch/x86/include/asm/shmparam.h \
  /build/linux-6.13.7/include/linux/kmsan_types.h \
  /build/linux-6.13.7/include/linux/mutex_types.h \
    $(wildcard include/config/MUTEX_SPIN_ON_OWNER) \
  /build/linux-6.13.7/include/linux/osq_lock.h \
  /build/linux-6.13.7/include/linux/spinlock_types.h \
  /build/linux-6.13.7/include/linux/rwlock_types.h \
  /build/linux-6.13.7/include/linux/plist_types.h \
  /build/linux-6.13.7/include/linux/hrtimer_types.h \
  /build/linux-6.13.7/include/linux/timerqueue_types.h \
  /build/linux-6.13.7/include/linux/rbtree_types.h \
  /build/linux-6.13.7/include/linux/timer_types.h \
  /build/linux-6.13.7/include/linux/seccomp_types.h \
    $(wildcard include/config/SECCOMP) \
  /build/linux-6.13.7/include/linux/nodemask_types.h \
  /build/linux-6.13.7/include/linux/refcount_types.h \
  /build/linux-6.13.7/include/linux/resource.h \
  /build/linux-6.13.7/include/uapi/linux/resource.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/resource.h \
  /build/linux-6.13.7/include/asm-generic/resource.h \
  /build/linux-6.13.7/include/uapi/asm-generic/resource.h \
  /build/linux-6.13.7/include/linux/latencytop.h \
  /build/linux-6.13.7/include/linux/sched/prio.h \
  /build/linux-6.13.7/include/linux/sched/types.h \
  /build/linux-6.13.7/include/linux/signal_types.h \
    $(wildcard include/config/OLD_SIGACTION) \
  /build/linux-6.13.7/include/uapi/linux/signal.h \
  /build/linux-6.13.7/arch/x86/include/asm/signal.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/signal.h \
  /build/linux-6.13.7/include/uapi/asm-generic/signal-defs.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/siginfo.h \
  /build/linux-6.13.7/include/uapi/asm-generic/siginfo.h \
  /build/linux-6.13.7/include/linux/syscall_user_dispatch_types.h \
  /build/linux-6.13.7/include/linux/mm_types_task.h \
    $(wildcard include/config/ARCH_WANT_BATCHED_UNMAP_TLB_FLUSH) \
  /build/linux-6.13.7/arch/x86/include/asm/tlbbatch.h \
  /build/linux-6.13.7/include/linux/netdevice_xmit.h \
    $(wildcard include/config/NET_EGRESS) \
  /build/linux-6.13.7/include/linux/task_io_accounting.h \
    $(wildcard include/config/TASK_IO_ACCOUNTING) \
  /build/linux-6.13.7/include/linux/posix-timers_types.h \
  /build/linux-6.13.7/include/uapi/linux/rseq.h \
  /build/linux-6.13.7/include/linux/seqlock_types.h \
  /build/linux-6.13.7/include/linux/kcsan.h \
  /build/linux-6.13.7/include/linux/rv.h \
    $(wildcard include/config/RV_REACTORS) \
  /build/linux-6.13.7/include/linux/livepatch_sched.h \
  /build/linux-6.13.7/include/linux/uidgid_types.h \
  /build/linux-6.13.7/arch/x86/include/generated/asm/kmap_size.h \
  /build/linux-6.13.7/include/asm-generic/kmap_size.h \
    $(wildcard include/config/DEBUG_KMAP_LOCAL) \
  /build/linux-6.13.7/include/linux/sched/ext.h \
    $(wildcard include/config/EXT_GROUP_SCHED) \
  /build/linux-6.13.7/include/linux/spinlock.h \
  /build/linux-6.13.7/include/linux/bottom_half.h \
  /build/linux-6.13.7/include/linux/lockdep.h \
    $(wildcard include/config/DEBUG_LOCKING_API_SELFTESTS) \
  /build/linux-6.13.7/arch/x86/include/generated/asm/mmiowb.h \
  /build/linux-6.13.7/include/asm-generic/mmiowb.h \
    $(wildcard include/config/MMIOWB) \
  /build/linux-6.13.7/arch/x86/include/asm/spinlock.h \
  /build/linux-6.13.7/arch/x86/include/asm/qspinlock.h \
  /build/linux-6.13.7/include/asm-generic/qspinlock.h \
  /build/linux-6.13.7/arch/x86/include/asm/qrwlock.h \
  /build/linux-6.13.7/include/asm-generic/qrwlock.h \
  /build/linux-6.13.7/include/linux/rwlock.h \
  /build/linux-6.13.7/include/linux/spinlock_api_smp.h \
    $(wildcard include/config/INLINE_SPIN_LOCK) \
    $(wildcard include/config/INLINE_SPIN_LOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK) \
    $(wildcard include/config/INLINE_SPIN_TRYLOCK_BH) \
    $(wildcard include/config/UNINLINE_SPIN_UNLOCK) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_BH) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_SPIN_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/GENERIC_LOCKBREAK) \
  /build/linux-6.13.7/include/linux/rwlock_api_smp.h \
    $(wildcard include/config/INLINE_READ_LOCK) \
    $(wildcard include/config/INLINE_WRITE_LOCK) \
    $(wildcard include/config/INLINE_READ_LOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_LOCK_BH) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_WRITE_LOCK_IRQSAVE) \
    $(wildcard include/config/INLINE_READ_TRYLOCK) \
    $(wildcard include/config/INLINE_WRITE_TRYLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK) \
    $(wildcard include/config/INLINE_READ_UNLOCK_BH) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_BH) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQ) \
    $(wildcard include/config/INLINE_READ_UNLOCK_IRQRESTORE) \
    $(wildcard include/config/INLINE_WRITE_UNLOCK_IRQRESTORE) \
  /build/linux-6.13.7/include/linux/tracepoint-defs.h \
  /build/linux-6.13.7/include/vdso/time32.h \
  /build/linux-6.13.7/include/vdso/time.h \
  /build/linux-6.13.7/include/linux/uidgid.h \
    $(wildcard include/config/MULTIUSER) \
    $(wildcard include/config/USER_NS) \
  /build/linux-6.13.7/include/linux/highuid.h \
  /build/linux-6.13.7/include/linux/buildid.h \
    $(wildcard include/config/VMCORE_INFO) \
  /build/linux-6.13.7/include/linux/kmod.h \
  /build/linux-6.13.7/include/linux/umh.h \
  /build/linux-6.13.7/include/linux/gfp.h \
    $(wildcard include/config/HIGHMEM) \
    $(wildcard include/config/ZONE_DMA) \
    $(wildcard include/config/ZONE_DMA32) \
    $(wildcard include/config/ZONE_DEVICE) \
    $(wildcard include/config/CONTIG_ALLOC) \
  /build/linux-6.13.7/include/linux/mmzone.h \
    $(wildcard include/config/ARCH_FORCE_MAX_ORDER) \
    $(wildcard include/config/CMA) \
    $(wildcard include/config/MEMORY_ISOLATION) \
    $(wildcard include/config/ZSMALLOC) \
    $(wildcard include/config/UNACCEPTED_MEMORY) \
    $(wildcard include/config/IOMMU_SUPPORT) \
    $(wildcard include/config/SWAP) \
    $(wildcard include/config/HUGETLB_PAGE) \
    $(wildcard include/config/TRANSPARENT_HUGEPAGE) \
    $(wildcard include/config/LRU_GEN_STATS) \
    $(wildcard include/config/LRU_GEN_WALKS_MMU) \
    $(wildcard include/config/MEMORY_FAILURE) \
    $(wildcard include/config/PAGE_EXTENSION) \
    $(wildcard include/config/DEFERRED_STRUCT_PAGE_INIT) \
    $(wildcard include/config/HAVE_MEMORYLESS_NODES) \
    $(wildcard include/config/SPARSEMEM_EXTREME) \
    $(wildcard include/config/HAVE_ARCH_PFN_VALID) \
  /build/linux-6.13.7/include/linux/list_nulls.h \
  /build/linux-6.13.7/include/linux/wait.h \
  /build/linux-6.13.7/include/linux/seqlock.h \
  /build/linux-6.13.7/include/linux/mutex.h \
  /build/linux-6.13.7/include/linux/debug_locks.h \
  /build/linux-6.13.7/include/linux/nodemask.h \
  /build/linux-6.13.7/include/linux/random.h \
    $(wildcard include/config/VMGENID) \
  /build/linux-6.13.7/include/uapi/linux/random.h \
  /build/linux-6.13.7/include/linux/irqnr.h \
  /build/linux-6.13.7/include/uapi/linux/irqnr.h \
  /build/linux-6.13.7/include/linux/pageblock-flags.h \
    $(wildcard include/config/HUGETLB_PAGE_SIZE_VARIABLE) \
  /build/linux-6.13.7/include/linux/page-flags-layout.h \
  /build/linux-6.13.7/include/generated/bounds.h \
  /build/linux-6.13.7/include/linux/mm_types.h \
    $(wildcard include/config/HAVE_ALIGNED_STRUCT_PAGE) \
    $(wildcard include/config/HUGETLB_PMD_PAGE_TABLE_SHARING) \
    $(wildcard include/config/USERFAULTFD) \
    $(wildcard include/config/ANON_VMA_NAME) \
    $(wildcard include/config/PER_VMA_LOCK) \
    $(wildcard include/config/HAVE_ARCH_COMPAT_MMAP_BASES) \
    $(wildcard include/config/MEMBARRIER) \
    $(wildcard include/config/AIO) \
    $(wildcard include/config/MMU_NOTIFIER) \
    $(wildcard include/config/SPLIT_PMD_PTLOCKS) \
    $(wildcard include/config/IOMMU_MM_DATA) \
    $(wildcard include/config/KSM) \
    $(wildcard include/config/CORE_DUMP_DEFAULT_ELF_HEADERS) \
  /build/linux-6.13.7/include/linux/auxvec.h \
  /build/linux-6.13.7/include/uapi/linux/auxvec.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/auxvec.h \
  /build/linux-6.13.7/include/linux/kref.h \
  /build/linux-6.13.7/include/linux/refcount.h \
  /build/linux-6.13.7/include/linux/rbtree.h \
  /build/linux-6.13.7/include/linux/rcupdate.h \
    $(wildcard include/config/TINY_RCU) \
    $(wildcard include/config/RCU_STRICT_GRACE_PERIOD) \
    $(wildcard include/config/RCU_LAZY) \
    $(wildcard include/config/TASKS_RCU_GENERIC) \
    $(wildcard include/config/RCU_STALL_COMMON) \
    $(wildcard include/config/KVM_XFER_TO_GUEST_WORK) \
    $(wildcard include/config/RCU_NOCB_CPU) \
    $(wildcard include/config/TASKS_RUDE_RCU) \
    $(wildcard include/config/TREE_RCU) \
    $(wildcard include/config/DEBUG_OBJECTS_RCU_HEAD) \
    $(wildcard include/config/PROVE_RCU) \
    $(wildcard include/config/ARCH_WEAK_RELEASE_ACQUIRE) \
  /build/linux-6.13.7/include/linux/context_tracking_irq.h \
    $(wildcard include/config/CONTEXT_TRACKING_IDLE) \
  /build/linux-6.13.7/include/linux/rcutree.h \
  /build/linux-6.13.7/include/linux/maple_tree.h \
    $(wildcard include/config/MAPLE_RCU_DISABLED) \
    $(wildcard include/config/DEBUG_MAPLE_TREE) \
  /build/linux-6.13.7/include/linux/rwsem.h \
    $(wildcard include/config/RWSEM_SPIN_ON_OWNER) \
    $(wildcard include/config/DEBUG_RWSEMS) \
  /build/linux-6.13.7/include/linux/completion.h \
  /build/linux-6.13.7/include/linux/swait.h \
  /build/linux-6.13.7/include/linux/uprobes.h \
  /build/linux-6.13.7/include/linux/timer.h \
    $(wildcard include/config/DEBUG_OBJECTS_TIMERS) \
  /build/linux-6.13.7/include/linux/ktime.h \
  /build/linux-6.13.7/include/linux/jiffies.h \
  /build/linux-6.13.7/include/vdso/jiffies.h \
  /build/linux-6.13.7/include/generated/timeconst.h \
  /build/linux-6.13.7/include/vdso/ktime.h \
  /build/linux-6.13.7/include/linux/timekeeping.h \
    $(wildcard include/config/GENERIC_CMOS_UPDATE) \
  /build/linux-6.13.7/include/linux/clocksource_ids.h \
  /build/linux-6.13.7/include/linux/debugobjects.h \
    $(wildcard include/config/DEBUG_OBJECTS) \
    $(wildcard include/config/DEBUG_OBJECTS_FREE) \
  /build/linux-6.13.7/arch/x86/include/asm/uprobes.h \
  /build/linux-6.13.7/include/linux/notifier.h \
  /build/linux-6.13.7/include/linux/srcu.h \
    $(wildcard include/config/TINY_SRCU) \
    $(wildcard include/config/NEED_SRCU_NMI_SAFE) \
  /build/linux-6.13.7/include/linux/workqueue.h \
    $(wildcard include/config/DEBUG_OBJECTS_WORK) \
    $(wildcard include/config/FREEZER) \
    $(wildcard include/config/WQ_WATCHDOG) \
  /build/linux-6.13.7/include/linux/workqueue_types.h \
  /build/linux-6.13.7/include/linux/rcu_segcblist.h \
  /build/linux-6.13.7/include/linux/srcutree.h \
  /build/linux-6.13.7/include/linux/rcu_node_tree.h \
    $(wildcard include/config/RCU_FANOUT) \
    $(wildcard include/config/RCU_FANOUT_LEAF) \
  /build/linux-6.13.7/include/linux/percpu_counter.h \
  /build/linux-6.13.7/arch/x86/include/asm/mmu.h \
    $(wildcard include/config/MODIFY_LDT_SYSCALL) \
  /build/linux-6.13.7/include/linux/page-flags.h \
    $(wildcard include/config/PAGE_IDLE_FLAG) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_2) \
    $(wildcard include/config/ARCH_USES_PG_ARCH_3) \
    $(wildcard include/config/HUGETLB_PAGE_OPTIMIZE_VMEMMAP) \
  /build/linux-6.13.7/include/linux/local_lock.h \
  /build/linux-6.13.7/include/linux/local_lock_internal.h \
  /build/linux-6.13.7/include/linux/zswap.h \
    $(wildcard include/config/ZSWAP) \
  /build/linux-6.13.7/include/linux/memory_hotplug.h \
    $(wildcard include/config/ARCH_HAS_ADD_PAGES) \
    $(wildcard include/config/MEMORY_HOTREMOVE) \
  /build/linux-6.13.7/arch/x86/include/generated/asm/mmzone.h \
  /build/linux-6.13.7/include/asm-generic/mmzone.h \
  /build/linux-6.13.7/include/linux/topology.h \
    $(wildcard include/config/USE_PERCPU_NUMA_NODE_ID) \
    $(wildcard include/config/SCHED_SMT) \
  /build/linux-6.13.7/include/linux/arch_topology.h \
    $(wildcard include/config/GENERIC_ARCH_TOPOLOGY) \
  /build/linux-6.13.7/arch/x86/include/asm/topology.h \
    $(wildcard include/config/X86_LOCAL_APIC) \
    $(wildcard include/config/SCHED_MC_PRIO) \
  /build/linux-6.13.7/arch/x86/include/asm/mpspec.h \
    $(wildcard include/config/EISA) \
    $(wildcard include/config/X86_MPPARSE) \
  /build/linux-6.13.7/arch/x86/include/asm/mpspec_def.h \
  /build/linux-6.13.7/arch/x86/include/asm/x86_init.h \
  /build/linux-6.13.7/arch/x86/include/asm/apicdef.h \
  /build/linux-6.13.7/include/asm-generic/topology.h \
  /build/linux-6.13.7/include/linux/cpu_smt.h \
    $(wildcard include/config/HOTPLUG_SMT) \
  /build/linux-6.13.7/include/linux/sysctl.h \
    $(wildcard include/config/SYSCTL) \
  /build/linux-6.13.7/include/uapi/linux/sysctl.h \
  /build/linux-6.13.7/include/linux/elf.h \
    $(wildcard include/config/ARCH_HAVE_EXTRA_ELF_NOTES) \
    $(wildcard include/config/ARCH_USE_GNU_PROPERTY) \
    $(wildcard include/config/ARCH_HAVE_ELF_PROT) \
  /build/linux-6.13.7/arch/x86/include/asm/elf.h \
    $(wildcard include/config/X86_X32_ABI) \
  /build/linux-6.13.7/arch/x86/include/asm/ia32.h \
  /build/linux-6.13.7/include/linux/compat.h \
    $(wildcard include/config/ARCH_HAS_SYSCALL_WRAPPER) \
    $(wildcard include/config/COMPAT_OLD_SIGACTION) \
    $(wildcard include/config/ODD_RT_SIGACTION) \
  /build/linux-6.13.7/include/linux/sem.h \
  /build/linux-6.13.7/include/uapi/linux/sem.h \
  /build/linux-6.13.7/include/linux/ipc.h \
  /build/linux-6.13.7/include/linux/rhashtable-types.h \
  /build/linux-6.13.7/include/uapi/linux/ipc.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/ipcbuf.h \
  /build/linux-6.13.7/include/uapi/asm-generic/ipcbuf.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/sembuf.h \
  /build/linux-6.13.7/include/linux/socket.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/socket.h \
  /build/linux-6.13.7/include/uapi/asm-generic/socket.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/sockios.h \
  /build/linux-6.13.7/include/uapi/asm-generic/sockios.h \
  /build/linux-6.13.7/include/uapi/linux/sockios.h \
  /build/linux-6.13.7/include/linux/uio.h \
    $(wildcard include/config/ARCH_HAS_COPY_MC) \
  /build/linux-6.13.7/include/uapi/linux/uio.h \
  /build/linux-6.13.7/include/uapi/linux/socket.h \
  /build/linux-6.13.7/include/uapi/linux/if.h \
  /build/linux-6.13.7/include/uapi/linux/libc-compat.h \
  /build/linux-6.13.7/include/uapi/linux/hdlc/ioctl.h \
  /build/linux-6.13.7/include/linux/fs.h \
    $(wildcard include/config/READ_ONLY_THP_FOR_FS) \
    $(wildcard include/config/FS_POSIX_ACL) \
    $(wildcard include/config/CGROUP_WRITEBACK) \
    $(wildcard include/config/IMA) \
    $(wildcard include/config/FILE_LOCKING) \
    $(wildcard include/config/FSNOTIFY) \
    $(wildcard include/config/FS_ENCRYPTION) \
    $(wildcard include/config/FS_VERITY) \
    $(wildcard include/config/EPOLL) \
    $(wildcard include/config/UNICODE) \
    $(wildcard include/config/QUOTA) \
    $(wildcard include/config/FS_DAX) \
    $(wildcard include/config/BLOCK) \
  /build/linux-6.13.7/include/linux/wait_bit.h \
  /build/linux-6.13.7/include/linux/kdev_t.h \
  /build/linux-6.13.7/include/uapi/linux/kdev_t.h \
  /build/linux-6.13.7/include/linux/dcache.h \
  /build/linux-6.13.7/include/linux/rculist.h \
    $(wildcard include/config/PROVE_RCU_LIST) \
  /build/linux-6.13.7/include/linux/rculist_bl.h \
  /build/linux-6.13.7/include/linux/list_bl.h \
  /build/linux-6.13.7/include/linux/bit_spinlock.h \
  /build/linux-6.13.7/include/linux/lockref.h \
    $(wildcard include/config/ARCH_USE_CMPXCHG_LOCKREF) \
  /build/linux-6.13.7/include/linux/stringhash.h \
    $(wildcard include/config/DCACHE_WORD_ACCESS) \
  /build/linux-6.13.7/include/linux/hash.h \
    $(wildcard include/config/HAVE_ARCH_HASH) \
  /build/linux-6.13.7/include/linux/path.h \
  /build/linux-6.13.7/include/linux/list_lru.h \
  /build/linux-6.13.7/include/linux/shrinker.h \
    $(wildcard include/config/SHRINKER_DEBUG) \
  /build/linux-6.13.7/include/linux/xarray.h \
    $(wildcard include/config/XARRAY_MULTI) \
  /build/linux-6.13.7/include/linux/sched/mm.h \
    $(wildcard include/config/MMU_LAZY_TLB_REFCOUNT) \
    $(wildcard include/config/ARCH_HAS_MEMBARRIER_CALLBACKS) \
  /build/linux-6.13.7/include/linux/sync_core.h \
    $(wildcard include/config/ARCH_HAS_SYNC_CORE_BEFORE_USERMODE) \
    $(wildcard include/config/ARCH_HAS_PREPARE_SYNC_CORE_CMD) \
  /build/linux-6.13.7/arch/x86/include/asm/sync_core.h \
  /build/linux-6.13.7/include/linux/sched/coredump.h \
  /build/linux-6.13.7/include/linux/radix-tree.h \
  /build/linux-6.13.7/include/linux/pid.h \
  /build/linux-6.13.7/include/linux/capability.h \
  /build/linux-6.13.7/include/uapi/linux/capability.h \
  /build/linux-6.13.7/include/linux/semaphore.h \
  /build/linux-6.13.7/include/linux/fcntl.h \
    $(wildcard include/config/ARCH_32BIT_OFF_T) \
  /build/linux-6.13.7/include/uapi/linux/fcntl.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/fcntl.h \
  /build/linux-6.13.7/include/uapi/asm-generic/fcntl.h \
  /build/linux-6.13.7/include/uapi/linux/openat2.h \
  /build/linux-6.13.7/include/linux/migrate_mode.h \
  /build/linux-6.13.7/include/linux/percpu-rwsem.h \
  /build/linux-6.13.7/include/linux/rcuwait.h \
  /build/linux-6.13.7/include/linux/sched/signal.h \
    $(wildcard include/config/SCHED_AUTOGROUP) \
    $(wildcard include/config/BSD_PROCESS_ACCT) \
    $(wildcard include/config/TASKSTATS) \
    $(wildcard include/config/STACK_GROWSUP) \
  /build/linux-6.13.7/include/linux/signal.h \
    $(wildcard include/config/DYNAMIC_SIGFRAME) \
  /build/linux-6.13.7/include/linux/sched/jobctl.h \
  /build/linux-6.13.7/include/linux/sched/task.h \
    $(wildcard include/config/HAVE_EXIT_THREAD) \
    $(wildcard include/config/ARCH_WANTS_DYNAMIC_TASK_STRUCT) \
    $(wildcard include/config/HAVE_ARCH_THREAD_STRUCT_WHITELIST) \
  /build/linux-6.13.7/include/linux/uaccess.h \
    $(wildcard include/config/ARCH_HAS_SUBPAGE_FAULTS) \
  /build/linux-6.13.7/include/linux/fault-inject-usercopy.h \
    $(wildcard include/config/FAULT_INJECTION_USERCOPY) \
  /build/linux-6.13.7/include/linux/nospec.h \
  /build/linux-6.13.7/arch/x86/include/asm/uaccess.h \
    $(wildcard include/config/CC_HAS_ASM_GOTO_OUTPUT) \
    $(wildcard include/config/CC_HAS_ASM_GOTO_TIED_OUTPUT) \
    $(wildcard include/config/X86_INTEL_USERCOPY) \
  /build/linux-6.13.7/include/linux/mmap_lock.h \
  /build/linux-6.13.7/arch/x86/include/asm/smap.h \
  /build/linux-6.13.7/arch/x86/include/asm/extable.h \
    $(wildcard include/config/BPF_JIT) \
  /build/linux-6.13.7/arch/x86/include/asm/tlbflush.h \
  /build/linux-6.13.7/include/linux/mmu_notifier.h \
  /build/linux-6.13.7/include/linux/interval_tree.h \
  /build/linux-6.13.7/arch/x86/include/asm/invpcid.h \
  /build/linux-6.13.7/arch/x86/include/asm/pti.h \
  /build/linux-6.13.7/arch/x86/include/asm/pgtable.h \
    $(wildcard include/config/DEBUG_WX) \
    $(wildcard include/config/HAVE_ARCH_TRANSPARENT_HUGEPAGE_PUD) \
    $(wildcard include/config/ARCH_HAS_PTE_DEVMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PMD_PFNMAP) \
    $(wildcard include/config/ARCH_SUPPORTS_PUD_PFNMAP) \
    $(wildcard include/config/HAVE_ARCH_SOFT_DIRTY) \
    $(wildcard include/config/ARCH_ENABLE_THP_MIGRATION) \
    $(wildcard include/config/PAGE_TABLE_CHECK) \
  /build/linux-6.13.7/arch/x86/include/asm/pkru.h \
  /build/linux-6.13.7/arch/x86/include/asm/fpu/api.h \
    $(wildcard include/config/X86_DEBUG_FPU) \
  /build/linux-6.13.7/arch/x86/include/asm/coco.h \
  /build/linux-6.13.7/include/asm-generic/pgtable_uffd.h \
  /build/linux-6.13.7/include/linux/page_table_check.h \
  /build/linux-6.13.7/arch/x86/include/asm/pgtable_64.h \
  /build/linux-6.13.7/arch/x86/include/asm/fixmap.h \
    $(wildcard include/config/PROVIDE_OHCI1394_DMA_INIT) \
    $(wildcard include/config/X86_IO_APIC) \
    $(wildcard include/config/PCI_MMCONFIG) \
    $(wildcard include/config/ACPI_APEI_GHES) \
    $(wildcard include/config/INTEL_TXT) \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/vsyscall.h \
  /build/linux-6.13.7/include/asm-generic/fixmap.h \
  /build/linux-6.13.7/arch/x86/include/asm/pgtable-invert.h \
  /build/linux-6.13.7/arch/x86/include/asm/uaccess_64.h \
  /build/linux-6.13.7/arch/x86/include/asm/runtime-const.h \
  /build/linux-6.13.7/include/asm-generic/access_ok.h \
    $(wildcard include/config/ALTERNATE_USER_ADDRESS_SPACE) \
  /build/linux-6.13.7/include/linux/cred.h \
  /build/linux-6.13.7/include/linux/key.h \
    $(wildcard include/config/KEY_NOTIFICATIONS) \
    $(wildcard include/config/NET) \
  /build/linux-6.13.7/include/linux/assoc_array.h \
    $(wildcard include/config/ASSOCIATIVE_ARRAY) \
  /build/linux-6.13.7/include/linux/sched/user.h \
    $(wildcard include/config/VFIO_PCI_ZDEV_KVM) \
    $(wildcard include/config/IOMMUFD) \
    $(wildcard include/config/WATCH_QUEUE) \
  /build/linux-6.13.7/include/linux/ratelimit.h \
  /build/linux-6.13.7/include/linux/posix-timers.h \
  /build/linux-6.13.7/include/linux/alarmtimer.h \
    $(wildcard include/config/RTC_CLASS) \
  /build/linux-6.13.7/include/linux/hrtimer.h \
    $(wildcard include/config/HIGH_RES_TIMERS) \
    $(wildcard include/config/TIME_LOW_RES) \
    $(wildcard include/config/TIMERFD) \
  /build/linux-6.13.7/include/linux/hrtimer_defs.h \
  /build/linux-6.13.7/include/linux/timerqueue.h \
  /build/linux-6.13.7/include/linux/rcuref.h \
  /build/linux-6.13.7/include/linux/rcu_sync.h \
  /build/linux-6.13.7/include/linux/delayed_call.h \
  /build/linux-6.13.7/include/linux/uuid.h \
  /build/linux-6.13.7/include/linux/errseq.h \
  /build/linux-6.13.7/include/linux/ioprio.h \
  /build/linux-6.13.7/include/linux/sched/rt.h \
  /build/linux-6.13.7/include/linux/iocontext.h \
    $(wildcard include/config/BLK_ICQ) \
  /build/linux-6.13.7/include/uapi/linux/ioprio.h \
  /build/linux-6.13.7/include/linux/fs_types.h \
  /build/linux-6.13.7/include/linux/mount.h \
  /build/linux-6.13.7/include/linux/mnt_idmapping.h \
  /build/linux-6.13.7/include/linux/slab.h \
    $(wildcard include/config/FAILSLAB) \
    $(wildcard include/config/KFENCE) \
    $(wildcard include/config/SLUB_TINY) \
    $(wildcard include/config/SLUB_DEBUG) \
    $(wildcard include/config/SLAB_FREELIST_HARDENED) \
    $(wildcard include/config/SLAB_BUCKETS) \
  /build/linux-6.13.7/include/linux/percpu-refcount.h \
  /build/linux-6.13.7/include/linux/kasan.h \
    $(wildcard include/config/KASAN_STACK) \
    $(wildcard include/config/KASAN_VMALLOC) \
  /build/linux-6.13.7/include/linux/kasan-enabled.h \
  /build/linux-6.13.7/include/linux/kasan-tags.h \
  /build/linux-6.13.7/include/linux/rw_hint.h \
  /build/linux-6.13.7/include/linux/file_ref.h \
  /build/linux-6.13.7/include/linux/unicode.h \
  /build/linux-6.13.7/include/uapi/linux/fs.h \
  /build/linux-6.13.7/include/linux/quota.h \
    $(wildcard include/config/QUOTA_NETLINK_INTERFACE) \
  /build/linux-6.13.7/include/uapi/linux/dqblk_xfs.h \
  /build/linux-6.13.7/include/linux/dqblk_v1.h \
  /build/linux-6.13.7/include/linux/dqblk_v2.h \
  /build/linux-6.13.7/include/linux/dqblk_qtree.h \
  /build/linux-6.13.7/include/linux/projid.h \
  /build/linux-6.13.7/include/uapi/linux/quota.h \
  /build/linux-6.13.7/include/uapi/linux/aio_abi.h \
  /build/linux-6.13.7/include/uapi/linux/unistd.h \
  /build/linux-6.13.7/arch/x86/include/asm/unistd.h \
  /build/linux-6.13.7/arch/x86/include/uapi/asm/unistd.h \
  /build/linux-6.13.7/arch/x86/include/generated/uapi/asm/unistd_64.h \
  /build/linux-6.13.7/arch/x86/include/generated/asm/unistd_64_x32.h \
  /build/linux-6.13.7/arch/x86/include/generated/asm/unistd_32_ia32.h \
  /build/linux-6.13.7/arch/x86/include/asm/compat.h \
  /build/linux-6.13.7/include/linux/sched/task_stack.h \
    $(wildcard include/config/DEBUG_STACK_USAGE) \
  /build/linux-6.13.7/include/uapi/linux/magic.h \
  /build/linux-6.13.7/arch/x86/include/asm/user32.h \
  /build/linux-6.13.7/include/asm-generic/compat.h \
    $(wildcard include/config/COMPAT_FOR_U64_ALIGNMENT) \
  /build/linux-6.13.7/arch/x86/include/asm/syscall_wrapper.h \
  /build/linux-6.13.7/arch/x86/include/asm/user.h \
  /build/linux-6.13.7/arch/x86/include/asm/user_64.h \
  /build/linux-6.13.7/arch/x86/include/asm/fsgsbase.h \
  /build/linux-6.13.7/arch/x86/include/asm/vdso.h \
  /build/linux-6.13.7/include/uapi/linux/elf.h \
  /build/linux-6.13.7/include/uapi/linux/elf-em.h \
  /build/linux-6.13.7/include/linux/kobject.h \
    $(wildcard include/config/UEVENT_HELPER) \
    $(wildcard include/config/DEBUG_KOBJECT_RELEASE) \
  /build/linux-6.13.7/include/linux/sysfs.h \
  /build/linux-6.13.7/include/linux/kernfs.h \
    $(wildcard include/config/KERNFS) \
  /build/linux-6.13.7/include/linux/idr.h \
  /build/linux-6.13.7/include/linux/kobject_ns.h \
  /build/linux-6.13.7/include/linux/moduleparam.h \
    $(wildcard include/config/ALPHA) \
    $(wildcard include/config/PPC64) \
  /build/linux-6.13.7/include/linux/rbtree_latch.h \
  /build/linux-6.13.7/include/linux/error-injection.h \
  /build/linux-6.13.7/include/asm-generic/error-injection.h \
  /build/linux-6.13.7/arch/x86/include/asm/module.h \
    $(wildcard include/config/UNWINDER_ORC) \
  /build/linux-6.13.7/include/asm-generic/module.h \
    $(wildcard include/config/HAVE_MOD_ARCH_SPECIFIC) \
    $(wildcard include/config/MODULES_USE_ELF_REL) \
    $(wildcard include/config/MODULES_USE_ELF_RELA) \
  /build/linux-6.13.7/include/linux/export-internal.h \
    $(wildcard include/config/PARISC) \

interfacek.mod.o: $(deps_interfacek.mod.o)

$(deps_interfacek.mod.o):

interfacek.mod.o: $(wildcard /build/linux-6.13.7/tools/objtool/objtool)
