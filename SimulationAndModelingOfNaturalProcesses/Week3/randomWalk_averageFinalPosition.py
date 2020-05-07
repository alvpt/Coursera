'''Se parte de una cuadricula de 50x50, con el punto en 
el origen de coordenadas [0, 0].

El punto se podrá mover un pixel a la derecha, a la izquierda,
arriba o abajo, siempre que se que el movimiento se incluya 
dentro de los limites de la cuadrcula preestablecida.

El punto tendrá 500 movimientos. Este proceso se repetirá para
1000 puntos , y se almacenará en cada caso la posición final'''


import numpy as np
import random
import matplotlib.pyplot as plt


center = np.array([0, 0])
N = 500
position = center

finalPositionMatrix = np.array([], dtype=np.int64).reshape(0,2)

heatmap = np.zeros((50, 50))

def randomMove(pos):
    direction = random.randint(1, 4)

    if direction==1 and pos[0] < 25:
        pos += np.array([1, 0])

    if direction==2 and pos[0] > -25:
        pos += np.array([-1, 0])

    if direction==3 and pos[1] < 25:
        pos += np.array([0, 1])

    if direction==4 and pos[1] > -25:
        pos += np.array([0, -1])
            
    else: randomMove(pos) 

    return pos


for point in np.arange(100000):
    for n in np.arange(N):
        position = randomMove(position)
    
    position
    heatmap[24-position[0], 24+position[1]] += 1
    finalPositionMatrix = np.vstack((finalPositionMatrix, position))

average = [sum(finalPositionMatrix[0])/1000, sum(finalPositionMatrix[1])/10000]

#print(average)
plt.imshow(heatmap, cmap='hot', interpolation='nearest')
plt.show()



