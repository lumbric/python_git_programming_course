import numpy as np
import matplotlib.pyplot as plt

from contexttimer import Timer


def plot_runtime(prepare_func, func, n_start, n_stop, step=1):
    input_sizes = np.arange(n_start, n_stop)
    elapsed_time = np.empty(n_stop - n_start)

    for i, input_size in enumerate(input_sizes):
        args = prepare_func(input_size)
        with Timer() as t:
            func(input_size, args)

        elapsed_time[i] = t.elapsed

    return plt.plot(input_sizes, elapsed_time, 'o-')
