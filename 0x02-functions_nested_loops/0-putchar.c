#include "main.h"

/**
 * main- output the character string with _ putchar
 * Return: Always 0 (Success)
 */

int main(void)
{
	char v[] = "_putchar";
	int i = 0;

	while (v[i] != '\0')
	{
	_putchar (v[i]);
	i++;
	}
	_putchar ('\n');
	return (0);
}
