#include <stdio.h>

// extern char get_first_char(const char *str);
// extern char get_second_char(const char *str);
// extern char is_empty_string(const char *str);
// extern char ft_strlen(const char *str);
extern char copy_one_char(char *dest, char *src);

int main(void)
{
	char test_str[10] = "Hello";
	char test_str2[10] = "World";
	// char *test_str2 = "";
	// char result = get_first_char(test_str);
	// char result = get_second_char(test_str);
	
	printf("String1: %s\n", test_str);
	printf("String2: %s\n", test_str2);
	printf("String Func: %c\n", copy_one_char(test_str, test_str2));
	printf("--------------------\n");
	// printf("String2: %s\n", test_str2);
	// printf("isEmpty?: %d\n", is_empty_string(test_str2));
	// printf("First character: %c\n", result);
	// printf("Second character: %c\n", result);

	return 0;
}
