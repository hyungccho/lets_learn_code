# Exercises

Now that we can just `require_relative`, we don't need to create separate files
for each exercise. **IMPORTANT**: Any change you make to the file after
requiring the file in `irb` will not come into effect. You MUST restart `irb`
and require it again.

Note: Make sure that the sample cases are working with your method.

1. Write a method `letter_changes(str)` that modifies the `str` argument being passed (assume all lower case)
using the following rules. Replace every letter of the string with the letter
following it in the alphabet (`c` becomes `d`, `z` becomes `a`). Then capitalize
every vowel in this **new** string (`a`, `e`, `i`, `o`, `u`), and finally return this
string.

**Sample Cases**
```
Input: "hello*3"
Output: "Ifmmp*3"

Input: "fun times!"
Output: "gvO Ujnft!"
```

2. Write a method `longest_word(sentence)` that returns the longest word in the sentence.
If there are more than one longest word in the sentence, then return both of them in
an array. You may assume that the string contains only letters and spaces.

**Sample Cases**
```
Input: "short lOnGest"
Output: "lOnGest"

Input: "abcd efgh ABC"
Output: ["abcd", "efgh"]
```

3. Write a method `time_conversion(minutes)` that will take in a number of minutes,
and return a string that formats the number into `hours:minutes`. You may assume that
`minutes` is an integer.

**Sample Cases**
```
Input: 15
Output: "0:15"

Input: 150
Output: "2:30"

Input: 360
Output: "6:00"
```

# Blog
- [ ] Day 4 Blog Post
