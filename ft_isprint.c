/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_isprint.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/27 19:45:26 by tchumbas          #+#    #+#             */
/*   Updated: 2025/10/27 19:46:13 by tchumbas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_isprint(char *str)
{
	unsigned int	i;
	unsigned char	c;
	unsigned int	len;

	i = 0;
	c = '0';
	len = ft_strlen(str);
	while (i < len)
	{
		c = str[i];
		if (!((c >= 32) && (c <= 126)))
		{
			return (0);
		}
		i++;
	}
	return (1);
}