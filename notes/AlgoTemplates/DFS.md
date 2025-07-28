### Python Template

```python
def dfs_recursively(self, node, visited: set):
    visited.add(node)
    '''
    process current node logic here
    '''
    self.process_logic(node)

    for next_node in node.get_successors():
        if next_node not in visited:
            self.dfs_recursively(next_node, visited)
```

### Swift Template

```swift
func dfs_recursive(_ node: Node,_ visited: Set) -> Bool {
    visited.insert(node)
    // process current node logic here

    // node.get_successors -> [(0,1),(1,0),(-1,0),(0,-1)] for matrices
    for next_node in node.get_successors() {
        if !visited.contains(next_node) {
            if self.dfs_recursive(next_node, visited) {
                return true
            }
        }
    }
    return false
```