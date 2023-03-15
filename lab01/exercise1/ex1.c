#include <string.h>
#include "ex1.h"
#include <stdio.h>

/* Returns the number of times LETTER appears in STR.
There are two different ways to iterate through a string.
1st way hint: strlen() may be useful
2nd way hint: all strings end in a null terminator */
int num_occurrences(char *str, char letter) {
    /* TODO: implement num_occurances */
    int count = 0;
    while(*str != 0)
    {
        if(*str == letter)
        {
            count++;
        }
     	str++;      
    }
    return count;
}

/* Populates DNA_SEQ with the number of times each nucleotide appears.
Each sequence will end with a NULL terminator and will have up to 20 nucleotides.
All letters will be upper case. */
void compute_nucleotide_occurrences(DNA_sequence *dna_seq) {
    /* TODO: implement compute_nucleotide_occurances */
    int count_A= num_occurrences(dna_seq->sequence, 'A');
    int count_C= num_occurrences(dna_seq->sequence, 'C');
    int count_G= num_occurrences(dna_seq->sequence, 'G');
    int count_T= num_occurrences(dna_seq->sequence, 'T');

    dna_seq->A_count = count_A;
    dna_seq->C_count = count_C;
    dna_seq->G_count = count_G;
    dna_seq->T_count = count_T;
}
