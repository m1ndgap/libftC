/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   count_digits.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/09/09 21:50:48 by beatde-a          #+#    #+#             */
/*   Updated: 2026/01/22 16:37:44 by tchumbas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	count_digits(long n, size_t base_size)
{
	int	digits;

	digits = 0;
	if (n == 0)
		return (1);
	if (n < 0)
	{
		digits++;
		n *= -1;
	}
	while (n > 0)
	{
		digits++;
		n /= base_size;
	}
	return (digits);
}