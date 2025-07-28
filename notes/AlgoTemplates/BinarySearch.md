### Python Template

```python
# [lo, hi] version
def binary_search(arr, target):
    lo, hi = 0, len(arr) - 1
    while lo <= hi:
        # no overflow problem in python, (lo + hi) // 2 is better.
        # mid = lo + (hi - lo) // 2
        mid = (lo + hi) // 2
        '''
        change to your comparison condition as you need
        '''
        # find the target
        if arr[mid] == target:
            break
        elif arr[mid] < target:
            lo = mid + 1
        else:
            hi = mid - 1
```

```swift
func binary_search(arr: [int], target: int) -> Int {
    var low = 0
    var high = arr.count - 1
    
    while low <= high {
        let mid = left + (right - left)/2
        // update the comparison condition as you need
        if arr[mid] == target {
            return mid
        } else if arr[mid] < target {
            low = mid + 1
        } else {
            high = mid - 1
        }
    }
}
```