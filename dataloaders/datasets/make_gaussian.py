"""Make Gaussian distribution
"""

import numpy as np


def make_gaussian(size, sigma=8, center=None):
    """ Make a square gaussian kernel.
    Size is the length of a side of the square
    sigma is standard deviation.
    Idea from this gist: https://gist.github.com/andrewgiessel/4635563
    With additions for skewed gaussian
    original output: np.exp(-((x - x0) ** 2 + (y - y0) ** 2) / sigma ** 2)
    """

    x = np.arange(0, size[0], 1, float)
    y = np.arange(0, size[1], 1, float)
    y = y[:, np.newaxis]

    if center is None:
        x0 = size[0] // 2
        y0 = size[1] // 2
        print("center is not given")
    else:
        x0 = center[0]
        y0 = center[1]

    # choose given sigma for the shortest side
    # if size[0] < size[1]:
    #     sigma = max(int(0.1 * size[0]), 1)
    #     sigma_1 = sigma
    #     sigma_2 = max((size[1] * sigma) // (size[0] + 1), 1)
    # else:
    #     sigma = max(int(0.1 * size[1]), 1)
    #     sigma_2 = sigma
    #     sigma_1 = max((size[0] * sigma) // (size[1] + 1), 1)
    # if sigma_1==0:
    #     sigma_1 = 1
    # if sigma_2 == 0:
    #     sigma_2 = 1
    sigma_1 = sigma_2 = sigma
    patch = np.exp(
        -(((x - x0) ** 2) / sigma_1 ** 2 + ((y - y0) ** 2) / sigma_2 ** 2)
    )
    return patch


if __name__ == "__main__":
    import matplotlib.pyplot as plt

    blank = np.zeros([200, 200])
    w = 60
    gaussian_patch = make_gaussian([w, 100], sigma=8)
    blank[0:100, 0:w] = gaussian_patch
    plt.figure()
    plt.imshow(blank)
    plt.show()
