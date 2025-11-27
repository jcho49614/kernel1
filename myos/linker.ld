SECTIONS
{
    . = 1M; /* optional load address for GRUB / 32-bit code */

    /* Multiboot header must be first */
    .multiboot : {
        *(.multiboot)
    }

    /* Kernel code */
    .text : {
        *(.text*)
    }

    /* Read-only data */
    .rodata : { *(.rodata*) }

    /* Data section */
    .data : { *(.data*) }

    /* BSS section including stack */
    .bss : { *(.bss*) *(COMMON) }
}
