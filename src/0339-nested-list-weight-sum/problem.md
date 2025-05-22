# Nested @immut/list.T Weight Sum

You are given a nested list of integers nested@immut/list.T. Each element is either an integer or a list whose elements may also be integers or other lists.
The depth of an integer is the number of lists that it is inside of. For example, the nested list [1,[2,2],[[3],2],1] has each integer's value set to its depth.
Return the sum of each integer in nested@immut/list.T multiplied by its depth.

Example 1:

Input: nested@immut/list.T = [[1,1],2,[1,1]]
Output: 10
Explanation: Four 1's at depth 2, one 2 at depth 1. 1*2 + 1*2 + 2*1 + 1*2 + 1*2 = 10.

Example 2:

Input: nested@immut/list.T = [1,[4,[6]]]
Output: 27
Explanation: One 1 at depth 1, one 4 at depth 2, and one 6 at depth 3. 1*1 + 4*2 + 6*3 = 27.
Example 3:

Input: nested@immut/list.T = [0]
Output: 0

Constraints:

1 <= nested@immut/list.T.length <= 50
The values of the integers in the nested list is in the range [-100, 100].
The maximum depth of any integer is less than or equal to 50.
