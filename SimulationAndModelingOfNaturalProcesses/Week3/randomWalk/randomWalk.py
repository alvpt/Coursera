import pygame 
import numpy as numpy

pygame.init()

width, height = 500, 500
screen = pygame.display.set_mode((height, width))

bg = 25, 25, 25
screen.fill(bg)

nxC, nyC = 10, 10

dimCW = width / nxC
dimCH = height / nyC

while True:

    for y in range(0, nxC):
        for x in range(0, nyC):

            poly = [((x) * dimCW,  y * dimCH),
                    ((x+1) * dimCW,  y  * dimCH),
                    ((x+1) * dimCW, (y+1) * dimCH),
                    ((x)  * dimCW, (y+1) * dimCH)] 

            pygame.draw.polygon(screen, (128, 128, 128), poly, 1)
    
    pygame.draw.circle(screen, (255, 0, 0), (250, 250), 5)

    pygame.display.flip()

    pass