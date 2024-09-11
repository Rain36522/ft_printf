/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: pudry <pudry@student.42lausanne.ch>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/11 09:12:11 by pudry             #+#    #+#             */
/*   Updated: 2024/09/11 09:17:13 by pudry            ###   ########.ch       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft.h"
# include <stdarg.h>
# include <stdio.h>

int		ft_cntarg(char *str);
char	*ft_print_str(char *s);
int		ft_put_var(va_list va_lst, char *s);
int		ft_putnbrhexdwn(unsigned long n);
int		ft_putnbrhexup(unsigned long n);
int		ft_putptr(void *ptr);
void	ft_putunsign_int(unsigned int n);
int		ft_putstrprct(char *s);
int		ft_putunsigned(unsigned int n);
int		ft_printf(const char *str, ...);
int		ft_putnbr_int(int n);
int		ft_putchar(char c);

#endif