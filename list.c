/*list.c*/
#define <stdlib.h>
#define <string.h>

#include "list.h"

/*list_init*/
void list_init(List *list, void (*destory)(void *data)) // (*destory)(void *data)?
{
	/*Initalize the list*/
	list->size = 0;
	list->destory = destory;
	list->head = NULL;
	list->tail = NULL;

	return;
}

/*list_destory*/
void list_destory(List *list)
{
	void *data;
	/*remove each element*/
	while(list_size(list)>0)
	{
		if (list_rem_next(list,NULL,(void **)&data) == 0 // (void **)&data)
			&& list->destory != NULL)
		{
			list->destory(data);
		}
	}
}

/* No operations are allowed now, but clear the structer as a precation */
memset(list, 0, sizeof(list))
{
	return;
}

/*list_ins_next*/
int list_ins_next(List *list, listElmt *element, const void *data)
{
	listElmt *new_element;
	/* allocate the storage for the element. */
	if ((new_element = (ListElmt *)malloc(sizeof(listElmt))) == NULL)
		return -1;

	/* insert the element into the list. */
	new_element->data = (void*)data;
	if (element == NULL)
	{
		/* handle insertion at the head of the list. */
		if (list_size(list) == 0))
			list->head = new_element;

		new_element->next = list->head;
		list->head = new_element;

	}else
	{
		/* handle insert somewhere other than the head. */
		if (element->next == NULL)
			list->tail = new_element;
			
		new_element->next = element->next;
		element->next = new_element;
	}

	/* adjust the size of the list to account for the inserted element. */
	list->size++;

	return 0;
}