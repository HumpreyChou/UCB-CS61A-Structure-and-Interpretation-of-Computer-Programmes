# -*- coding: utf-8 -*-
# @Author: Xia Hanyu (Humprey Chou)
# @Date:   2021-01-21 23:39:52
# @Last Modified by:   Xia Hanyu (Humprey Chou)
# @Last Modified time: 2021-01-21 23:40:13
def make_generators_generator(g):
    """Generates all the "sub"-generators of the generator returned by
    the generator function g.

    >>> def every_m_ints_to(n, m):
    ...     i = 0
    ...     while (i <= n):
    ...         yield i
    ...         i += m
    ...
    >>> def every_3_ints_to_10():
    ...     for item in every_m_ints_to(10, 3):
    ...         yield item
    ...
    >>> for gen in make_generators_generator(every_3_ints_to_10):
    ...     print("Next Generator:")
    ...     for item in gen:
    ...         print(item)
    ...
    Next Generator:
    0
    Next Generator:
    0
    3
    Next Generator:
    0
    3
    6
    Next Generator:
    0
    3
    6
    9
    """
    "*** YOUR CODE HERE ***"
    def solve(lst):
        yield from lst
    cur = []
    gg = g()
    for x in gg:
        cur.append(x)
        yield solve(cur.copy())
