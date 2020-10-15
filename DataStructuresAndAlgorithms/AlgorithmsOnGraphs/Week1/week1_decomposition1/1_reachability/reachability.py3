import sys


def reach(adj, x, y):
    '''This function finds wheter or not there is a path between 
    x and y.'''
 
    givenVertices = []
    [[givenVertices.append(element) for element in lists] for lists in adj]

    if x not in givenVertices:
        return 0
    elif y not in givenVertices:
        return 0
    
    # Initial conditions are set
    verticesVisited = [0] * len(adj) 
    vertex = x
    verticesVisited[vertex] = 1 
    visitingOrder = [vertex] 
    xCount = 0

    # The first vertex is explored    
    exploration = explore(adj[x], verticesVisited, visitingOrder) # Next vertex
    vertex = exploration[0]
    verticesVisited = exploration[1]
    visitingOrder = exploration[2]

    # print(x)
    # print(givenVertices)

    # While the vertex visited is not the desired value, the exploration continues 
    while vertex != y: 

        # print('Vertex: ', vertex)
        # print('Visiting order: ', visitingOrder)
        # print('verticesVisited: ', verticesVisited)
        # print('...')

        if vertex == x:
            xCount += 1

            if xCount == len(adj[x]):
                return 0

            else:
                exploration = explore(adj[vertex], verticesVisited, visitingOrder) 
                vertex = exploration[0]
                verticesVisited = exploration[1]
                visitingOrder = exploration[2]

        else:
            exploration = explore(adj[vertex], verticesVisited, visitingOrder) 
            vertex = exploration[0]
            verticesVisited = exploration[1]
            visitingOrder = exploration[2]

    return 1


def explore(adj_vertices, verticesVisited, visitingOrder):
    '''This function analyses the edges of a vertex, and 
    chooses one which has not been previously visited,
    while at the same time marking it as visited.'''

    visitedNeighbors = 0

    for neighbor in adj_vertices:

        if verticesVisited[neighbor] == 0:
            verticesVisited[neighbor] = 1
            visitingOrder.append(neighbor)
            vertex = neighbor
            return [vertex, verticesVisited, visitingOrder]

        else:
            visitedNeighbors += 1

    
    if len(adj_vertices) == visitedNeighbors:
        if len(visitingOrder) >= 2:
            visitingOrder = visitingOrder[0:(len(visitingOrder)-1)]
            vertex = visitingOrder[len(visitingOrder)-1]
            return [vertex, verticesVisited, visitingOrder]
        else:
            vertex = verticesVisited.index(0)
            verticesVisited[vertex] = 1
            return [vertex, verticesVisited, visitingOrder]




if __name__ == '__main__':
    input = sys.stdin.read()
    data = list(map(int, input.split()))
    n, m = data[0:2]
    data = data[2:]
    edges = list(zip(data[0:(2 * m):2], data[1:(2 * m):2])) # List  of tuples with the edges
    x, y = data[2 * m:]
    adj = [[] for _ in range(n)]
    x, y = x - 1, y - 1
    for (a, b) in edges:
        adj[a - 1].append(b - 1)
        adj[b - 1].append(a - 1)
    print(reach(adj, x, y))
