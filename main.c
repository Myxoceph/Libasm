#include <stdio.h>

extern char get_first_char(const char *str);

int main(void)
{
	char *test_str = "Hello";
	char result = get_first_char(test_str);
	
	printf("String: %s\n", test_str);
	printf("First character: %c\n", result);

	return 0;
}
