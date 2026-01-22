/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstclear.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tchumbas <tchumbas@student.42lisboa.com    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/01/22 16:47:03 by tchumbas          #+#    #+#             */
/*   Updated: 2026/01/22 16:47:11 by tchumbas         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	ft_lstclear(t_list **lst, void (*del)(void *))
{
	if (!lst || !*lst || !del)
		return ;
	while ((*lst)->next)
		ft_lstclear((&(*lst)->next), del);
	ft_lstdelone(*lst, del);
	*lst = NULL;
}