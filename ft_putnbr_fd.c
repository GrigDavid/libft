/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_putnbr_fd.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: dgrigor2 <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/02/01 16:17:49 by dgrigor2          #+#    #+#             */
/*   Updated: 2025/02/01 16:56:32 by dgrigor2         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	get_karg(int n);

int	power_of_ten(int n)
{
	int	ten;

	ten = 1;
	while (n > 0)
	{
		n --;
		ten *= 10;
	}
	return (ten);
}

void	ft_putnbr_fd(int n, int fd)
{
	char	zero;
	int		karg;
	int		i;

	i = 0;
	if (n == -2147483648)
	{
		write (fd, "-2147483648", 11);
		return ;
	}
	if (n < 0)
	{
		n *= -1;
		write (fd, "-", 1);
	}
	karg = get_karg(n);
	while (i < karg)
	{
		zero = '0' + (n / power_of_ten(karg - i - 1));
		write (fd, &zero, 1);
		n -= (n / power_of_ten(karg - i - 1)) * power_of_ten(karg - i - 1);
		i++;
	}
}
