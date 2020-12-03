#include <stdio.h>
#include <list.h>
int main(void)
{
    LIST_HEAD(temp1);
    printf("the address of prev :%x.\nthe address of next :%x\n", temp1.prev, temp1.next);
    struct list_head temp2;
    INIT_LIST_HEAD(&temp2);
    printf("the address of prev :%x.\nthe address of next :%x\n", temp2.prev, temp2.next);
    return 0;
}
