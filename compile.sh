arm-none-eabi-as -o arm.o arm.s
arm-none-eabi-ld -T arm.lds -o arm.elf arm.o
arm-none-eabi-objcopy -O binary arm.elf arm.bin
dd if=arm.bin of=flash.bin bs=4096 conv=notrunc
qemu-system-arm -M connex -m 8k -pflash flash.bin -nographic -serial stdio
