/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/10/27 19:52:12 by tchumbas          #+#    #+#             */
/*   Updated: 2025/10/27 19:52:27 by tchumbas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

unsigned int	ft_strlcat(char *dest, char *src, unsigned int size)
{
	unsigned int	i;
	unsigned int	y;
	unsigned int	lensrc;
	unsigned int	lendest;
	unsigned int	lentotal;

	lensrc = ft_strlen(src);
	lendest = ft_strlen(dest);
	lentotal = lendest + lensrc;
	while (i < size)
	{
		if (dest[i] != '\0')
		{
			i++;
		}
		else if (dest[i] == '\0')
		{
			while (size < lentotal)
			{
				dest[i + y] = src[y];
				y++;
			}
			return (lentotal);
		}
	}
	return (size);
}