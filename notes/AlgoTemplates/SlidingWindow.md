### Python Template

```python
# Need to refer: https://leetcode.com/problems/minimum-window-substring/discuss/26808/here-is-a-10-line-template-that-can-solve-most-substring-problems

def sliding_window_template_with_examples(s, p):
    # Could use defaultDict
    counter = Counter(p)

    start, end = 0, 0
    count = 0
    res = 0

    while end < len(s):
        counter[s[end]] += 1
        # update count based on some condition
        if counter[s[end]] > 1:
            count += 1
        end += 1

        while count > 0:
            '''
            update res here if finding minimum
            '''

            # increase start to make it invalid or valid again
            counter[s[start]] -= 1
            # update count based on some condition
            if counter[s[start]] > 0:
                count -= 1
            start += 1

        '''
        update res here if finding maximum
        '''
        res = max(res, end - start)

    return res
```

### Swift Template

```swift

```