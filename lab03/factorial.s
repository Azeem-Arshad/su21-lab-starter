.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    add a1, a0, x0
    
    loop:    
        addi a1, a1, -1
        beq a1, x0, exit

        mul a0, a1, a0
        j loop
        
    exit:
        jr ra    
    