# -*- coding: utf-8 -*-
# @Author: Xia Hanyu (Humprey Chou)
# @Date:   2021-01-19 10:48:47
# @Last Modified by:   Xia Hanyu (Humprey Chou)
# @Last Modified time: 2021-01-20 18:36:32
def Extend_Euclid(x, y):
    """
    Args:
        x ([type]): [description]
        y ([type]): [description]

    Returns:
        [type]: [description]
    >>> Extend_Euclid(11, 6)
    (1, -1, 2)
    """
    assert isinstance(x, int)
    assert x >= 0
    if y == 0:
        return (x, 1, 0)
    else:
        (d, a, b) = Extend_Euclid(y, x % y)
        return (d, b, a - (x // y) * b)


print(Extend_Euclid(11, 6))
