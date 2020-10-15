import sys


def number_of_components(adj):
    '''This function finds wheter or not there is a path between 
    x and y.''' 
    
    # Initial conditions are set
    verticesVisited = [0] * len(adj)  
    givenVertices = []
    [[givenVertices.append(element) for element in lists] for lists in adj]

    components = 1

    for vertex in range(len(adj)):
        if vertex not in givenVertices:
            components += 1
            verticesVisited[vertex] = 1 

    initialVertex = verticesVisited.index(0)
    vertex = initialVertex
    verticesVisited[vertex] = 1 
    visitingOrder = [vertex]

    # The first vertex is explored    
    exploration = explore(adj[vertex], verticesVisited, visitingOrder, initialVertex, components) # Next vertex
    vertex = exploration[0]
    verticesVisited = exploration[1]
    visitingOrder = exploration[2]
    initialVertex = exploration[3]
    components = exploration[4]


    # While the vertex visited is not the desired value, the exploration continues 
    while sum(verticesVisited) != len(adj): 


        exploration = explore(adj[vertex], verticesVisited, visitingOrder, initialVertex, components) 
        vertex = exploration[0]
        verticesVisited = exploration[1]
        visitingOrder = exploration[2]
        initialVertex = exploration[3]
        components = exploration[4]

    return components


def explore(adj_vertices, verticesVisited, visitingOrder, initialVertex, components):
    '''This function analyses the edges of a vertex, and 
    chooses one which has not been previously visited,
    while at the same time marking it as visited.'''

    visitedNeighbors = 0

    for neighbor in adj_vertices:

        if verticesVisited[neighbor] == 0:
            verticesVisited[neighbor] = 1
            visitingOrder.append(neighbor)
            vertex = neighbor
            return [vertex, verticesVisited, visitingOrder, initialVertex, components]

        else:
            visitedNeighbors += 1

    
    if len(adj_vertices) == visitedNeighbors:
        if len(visitingOrder) >= 2:
            visitingOrder = visitingOrder[0:(len(visitingOrder)-1)]
            vertex = visitingOrder[len(visitingOrder)-1]
            return [vertex, verticesVisited, visitingOrder, initialVertex, components]
        else:
            # print('aqui')
            components += 1
            initialVertex = verticesVisited.index(0)
            vertex = initialVertex
            verticesVisited[vertex] = 1
            visitingOrder.append(vertex)
            return [vertex, verticesVisited, visitingOrder, initialVertex, components]





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
