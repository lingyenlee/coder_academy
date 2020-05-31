# Set initial costs to Inifinity for all nodes except
# the start node (set start node to 0)
def setInitialCosts(nodes, start) 
    costs = {}
    # set all costs to Infinity from the start node
    nodes.each do |node|
      costs[node] = {
        cost: Float::INFINITY,
        parent: start
      }
    end
  
    # set start node cost to 0 for itself
    costs[start] = {cost: 0}
    return costs
  end
  
  
  # Update the stored costs for each set of children nodes passed in
  # then remove the parent node from the list of unvisited nodes
  def updateCosts(children, costs, parent, unvisitedNodes) 
    # If the cost from the parent to any of the children is less than
    # what is currently recorded, replace it
    children.each do |child,cost|
      if (cost < costs[child][:cost])
        costs[child] = {
          cost: cost,
          parent: parent
        }
      end
    end
    # when we're done, remove this node from the list of unvisited nodes
    unvisitedNodes.delete(parent)
  end
  
  # Returns the least code node that is remaining, or null
  # if all remaining ndoes are more expensive than those already visited
  def findLeastCostNode(costs, unvisitedNodes) 
    leastNode = nil
    cheapest = Float::INFINITY
    unvisitedNodes.each do |node| 
      if (costs[node][:cost] < cheapest)
        leastNode = node
        end
    end
    return leastNode
  end
  
  # Returns the shortest distance and path
  def getDistanceAndPath(costs, start, last) 
    result = []
    distance = 0
    node = last
    result.push(last)
    while (node != start) 
      distance += costs[node][:cost]
      node = costs[node][:parent]
      result.unshift(node)
    end
    # record distance for start node to rest of path
    distance += costs[node][:cost]
  
    return {
      distance: distance,
      path: distance == Float::INFINITY ? [] : result # If distance is Infinity, there is no path
    }
  end
  
  def dijkstra(graph, start, last)
    # If start and end are the same, return the single node path 
    # and cost of 0
    if (start == last) 
      return {
        distance: 0,
        path: [start]
      }
    end
  
    # Store an array of all nodes so we can check each
    unvisitedNodes = graph.keys
    # Start with start node. Set costs to all children and non-children(set to Infinity)
    costs = setInitialCosts(unvisitedNodes, start)
    updateCosts(graph[start], costs, start, unvisitedNodes)
  
    # for each unvisited node, find the least costly and update costs for its children
    while (unvisitedNodes.length > 0)
      node = findLeastCostNode(costs, unvisitedNodes)
      if (node != nil)
        updateCosts(graph[node], costs, node, unvisitedNodes)
      else
        # If the remaining nodes are more expensive than the ones already visited, we're done
        unvisitedNodes = []
      end
    end
  
    # return the distance and path
    return getDistanceAndPath(costs, start, last)
  end