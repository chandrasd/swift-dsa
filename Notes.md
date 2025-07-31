# Swift Tricks + Gotchas

Data Structures Templates:
- [Arrays](./Notes/DataStructuresTemplates/Arrays.md)
- [Dictionary](./Notes/DataStructuresTemplates/Dictionary.md)
- [Sets](./Notes/DataStructuresTemplates/Sets.md)
- [Stacks + Queues](./Notes/DataStructuresTemplates/Stacks+Queues.md)
- [Heaps](./Notes/DataStructuresTemplates/Heaps.md)
- [Trees](./Notes/DataStructuresTemplates/Trees.md)
- [Graphs](./Notes/DataStructuresTemplates/Graphs.md)

Algorithm Templates:
- [Binary Search](./Notes/AlgoTemplates/BinarySearch.md)
- [Two Pointers](./Notes/AlgoTemplates/TwoPointerAlgos.md)
- [Sliding Window](./Notes/AlgoTemplates/SlidingWindow.md)
- [BFS](./Notes/AlgoTemplates/BFS.md)
- [DFS](./Notes/AlgoTemplates/DFS.md)

# Problem Reviews
### Contains duplicates
- easy set solve. can do it in 1 line

### Valid Anagram
- compare hashmaps
- sort strings, less efficient

### Two Sum
- can return an array just like in python
```swift
return [variable1, variable2]
```

### Group Anagrams
- Simple way to make a dictionary out of a collection. Default case is pretty clean, no need for an else statement if `i` isn't a key in the Dictionary
```swift
for i in something {
   myDictionary[i, default:0] += 1
}
```
- Types of a Dictionary must be explicit when initiallizing an Dictionary
```swift
var count = [Character: Int]()
```

### Product of Array except self
- Cool way to initialize an array
```swift
var prefix = Array(repeating: 1, count: nums.count)
```
- Cool for loop, similar to `range()` in Python
```swift
for i in stride(from: 0, to: nums.count, by: 1) {
    // do something
}
for i in stride(from: nums.count - 1, through: 0, by: -1) {
    // do something
}
```

### Top K Fequent elements
- Insane One liner reduce
```swift
let numsDict = nums.reduce(into: [:]) { $0[$1, default: 0] += 1 }
```
- Bucket Sort Algorithm
- Might just be better to do Heap Problems in Python

### Valid Palindrome
- filter for alphanumeric characters only in a strings
```swift
if Character.isLetter || Charcter.isNumber {
    // do something
}
```