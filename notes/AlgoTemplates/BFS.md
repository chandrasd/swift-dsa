### Python template

```python
def bfs_iteratively_by_queue(self, start, target=None):
    queue, visited = deque([start]), {start}

    while queue:
        node = queue.popleft()
        visited.add(node)
        '''
        process current node logic here
        '''
        self.process_logic(node)

        # target is optional
        if node == target:
            '''
            reach the goal and break out
            '''
            self.process_target_logic(target)
            break
        for next_node in node.get_successors():
            if next_node not in visited:
                queue.append(next_node)
```

### Swift template

```swift
func bfs_iteratively_by_queue(_ start: Node, _ target: Node?) {
    var queue = [start]
    var visited = Set([start])

    while !queue.isEmpty {
        let node = queue.removeFirst()
        visited.insert(node)

        '''
        process current node logic here
        '''

        // target is optional
        if node == target {
            '''
            reach the goal and break out
            '''
            break
        }
        for nextNode in node.getSuccessors() {
            if !visited.contains(nextNode) {
                queue.append(nextNode)
            }
        }
    }
}
```
TODO: need to make a template for BFS traversals for 2D matrix 
