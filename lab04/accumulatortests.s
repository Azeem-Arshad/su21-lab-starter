.import lotsofaccumulators.s

.data
inputarray: .word 1,2,3,4,5,6,7,0

TestPassed: .asciiz "Test Passed!"
TestFailed: .asciiz "Test Failed!"

.text
# Tests if the given implementation of accumulate is correct.
#Input: a0 contains a pointer to the version of accumulate in question. See lotsofaccumulators.s for more details
#
#
#
#The main function currently runs a simple test that checks if accumulator works on the given input array. All versions of accumulate should pass this.
#Modify the test so that you can catch the bugs in four of the five solutions!
main:
    la a0 inputarray
    addi s0, x0, 5
    addi s1, s0, 1
    addi sp, sp, -8
    sw s0, 0(sp)
    sw s1, 4(sp)
    jal accumulatorone
    addi t0, x0, 5
    lw s0, 0(sp)
    lw s1, 4(sp)
    bne s0, t0, Fail
    addi t0, t0, 1
    bne s1, t0, Fail
    li t0 28
    beq a0 t0 Pass
Fail:
    la a0 TestFailed
    jal print_string
    j End
Pass:
    la a0 TestPassed
    jal print_string
End:
    jal exit

print_int:
	mv a1 a0
    li a0 1
    ecall
    jr ra
    
print_string:
	mv a1 a0
    li a0 4
    ecall
    jr ra
    
exit:
    li a0 10
    ecall