from itertools import permutations
n=int(input("enter number of cities:"))
print("enter the cost matrix(enter a each row separated by spaces):")
graph = []
for i in range(n):
    row = input().split()
    graph.append([int(x) for x in row])
start_city = 0
def TSP(graph,start_city):
    dist = []
    for cur_city in range(n):
        if cur_city != start_city:
            dist.append(cur_city)
    min_cost = float('inf')
    next_Perm = permutations(dist)
    for i in next_Perm:
        cur_cost = 0
        k = start_city      
        for j in i:
            cur_cost =cur_cost +graph[k][j]
            k=j
        cur_cost = cur_cost + graph[k][start_city]
        min_cost = min(min_cost, cur_cost)
    return min_cost    
min_TourCost = TSP(graph, start_city)
print("Minimum Tour cost of TSP:", min_TourCost)
