#include <stddef.h>
#include "ll_cycle.h"

int ll_has_cycle(node *head) {
    /* TODO: Implement ll_has_cycle */
    if(head == NULL)
    	return 0;
    
    node *fastptr= head;
    node *slowptr= head;
    
    if(fastptr->next == NULL || fastptr->next->next == NULL)
    	return 0;    
    
    fastptr = fastptr->next->next;
    slowptr = slowptr->next;
    
    while(fastptr != slowptr)
    {
        if(fastptr->next == NULL || fastptr->next->next == NULL)
        	return 0;
        
        fastptr = fastptr->next->next;
        slowptr = slowptr->next;
    
    }
    return 1;       
}
