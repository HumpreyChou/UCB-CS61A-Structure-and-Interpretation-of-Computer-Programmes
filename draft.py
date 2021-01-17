# -*- coding: utf-8 -*-
# @Author: Xia Hanyu (Humprey Chou)
# @Date:   2021-01-17 15:47:07
# @Last Modified by:   Xia Hanyu (Humprey Chou)
# @Last Modified time: 2021-01-17 15:48:41
def f(a, b):
    """[summary]

    Args:
        a ([type]): [description]
        b ([type]): [description]

    Returns:
        [type]: [description]
    >>> f(2, 2)
    """
    if a > b:
        return f(a - 3, 2 * b)
    elif a < b:
        return f(b // 2, a)
    else:
        return b

print(f(-1, -3))