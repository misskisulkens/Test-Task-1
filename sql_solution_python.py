import numpy as np
matrix = np.array([["a","b","c"],["d","e","f"]])
print(matrix)
print(matrix.shape)
def solution(matrix):
    ax0 = matrix[0]
    ax1 = matrix[1]
    final = np.dstack((ax0, ax1))
    final_upd = final.reshape(3,2)
    print(final_upd)
    print(final_upd.shape)
solution(matrix)