#Uses python3
import numpy as np
import sys


def number_of_components(adj):
    # This function counts the number of connected components
 
    
    # First, the initial conditions are set
    vertexVisited = [0] * len(adj) # Information about wheter the vertex has been
                                   # visited or not

    x = 0 # Initial vertex to be visited
    visit = [x] # List with the vertex that has been visited, in chronological order

    vertexVisited[x] = 1 # The initial vertex is marked as visited
    
    exploration = explore(adj[x], vertexVisited, visit) # Second vertex visited 
    vertex = exploration[0]
    vertexVisited = exploration[1]
    visit = exploration[2]
    
    # The number of times that the algorithm has visited the initial vertex
    # of a specific connected component
    xCount = 1

    components = 1

    while (len(adj)) != sum(vertexVisited):

        
        if vertex == x:
            xCount += 1

            if xCount >= len(adj[x]):
                components += 1
                vertex = vertexVisited.index(0)

            else:
                exploration = explore(adj[vertex], vertexVisited, visit) # Next vertex
                vertex = exploration[0]
                vertexVisited = exploration[1]
                visit = exploration[2]
                
        
        else:
            
            exploration = explore(adj[vertex], vertexVisited, visit) # Next vertex
            vertex = exploration[0]
            vertexVisited = exploration[1]
            visit = exploration[2]

    return components


def explore(adj_vertex, vertexVisited, visit):
    # This function analyses the edges of a vertex, and 
    # chooses one which has not been previously visited,
    # while at the same time marking it as visited.

    sumVisited = 0

    for neighbor in adj_vertex:

        if vertexVisited[neighbor] == 0:
            vertexVisited[neighbor] = 1
            visit.append(neighbor)

            return [neighbor, vertexVisited, visit]

        else:
            sumVisited += 1


    if len(adj_vertex) == sumVisited:

        if len(visit) >= 2:
            visit = visit[0:(len(visit)-1)]
            return [visit[len(visit)-1], vertexVisited, visit]
        else:
            vertex = vertexVisited.index(0)
            vertexVisited[vertex] = 1
            return [vertex, vertexVisited, visit]


if __name__ == '__main__':
    input = sys.stdin.read()
    data = list(map(int, input.split()))
    n, m = data[0:2]
    data = data[2:]
    edges = list(zip(data[0:(2 * m):2], data[1:(2 * m):2]))
    adj = [[] for _ in range(n)]
    for (a, b) in edges:
        adj[a - 1].append(b - 1)
        adj[b - 1].append(a - 1)
    print(number_of_components(adj))
