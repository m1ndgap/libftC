## 42 libftC

https://www.markdownguide.org/basic-syntax/

- isalpha
- isdigit
- isalnum
- isascii
- isprint
- strlen
- memset
- bzero
- memcpy
- memmove
- strlcpy
- strlcat
- toupper
- tolower
- strchr
- strrchr
- strncmp
- memchr
- memcmp
- strnstr
- atoi

To implement the two following functions, you will use `malloc()`:
- calloc 
- strdup

---

### Bonus part
Once you have completed the mandatory part, consider taking on this extra challenge.

Successfully completing this section will earn you bonus points.
Memory and string manipulation functions are useful. But you will soon discover that manipulating lists is even more useful.

You have to use the following structure to represent a node of your list. Add its declara￾tion to your `libft.h` file:

	typedef struct s_list
	{
	void *content;
	struct s_list *next;
	} t_list;
The members of the `t_list` struct are:
- `content`: The data contained in the node.
Using `void *` allows you to store any type of data.

- `next`: The address of the next node, or `NULL` if the next node is the last one.

In your Makefile, add a make bonus rule to add the bonus functions in your `libft.a`.
