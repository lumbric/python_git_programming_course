"""
A dummy script which could run much faster.

Try to profile it, find bad design and correct it!

"""

import logging
import numpy as np
from itertools import product
from collections import namedtuple
from contexttimer import timer


# will be modified, this is is not thread safe!
cache = namedtuple('keys', 'values')
cache.keys = []
cache.values = []


def read_wind_speed(time, location_x, location_y):
    """Read wind speed value at location x/y and time from fancy database."""
    key = time, location_x, location_y
    if key in cache.keys:
        idx = cache.keys.index(key)
        return cache.values[idx]

    # imagine that this is downloaded from some database:
    value = np.random.random()

    # cache it for next time!
    cache.keys.append(key)
    cache.values.append(value)

    return value


@timer()
def main():
    times = np.arange(100)
    locations_x = np.arange(15)
    locations_y = np.arange(18)

    values = [read_wind_speed(t, x, y)
              for t, x, y in product(times, locations_x, locations_y)]

    print(sum(values) / len(values))


if __name__ == '__main__':
    logging.basicConfig(level=logging.INFO)
    main()
