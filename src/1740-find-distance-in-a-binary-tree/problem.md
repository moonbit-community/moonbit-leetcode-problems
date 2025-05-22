# Find Distance in a Binary Tree

Given the root of a binary tree and two integers `p` and `q`, return _the **distance** between the nodes of value_ `p` _and value_ `q` _in the tree_.

The **distance** between two nodes is the number of edges on the path from one to the other.

**Example 1:**

**Input:** root = \[3,5,1,6,2,0,8,null,null,7,4\], p = 5, q = 0
**Output:** 3
**Explanation:** There are 3 edges between 5 and 0: 5-3-1-0.

**Example 2:**

**Input:** root = \[3,5,1,6,2,0,8,null,null,7,4\], p = 5, q = 7
**Output:** 2
**Explanation:** There are 2 edges between 5 and 7: 5-2-7.

**Example 3:**

**Input:** root = \[3,5,1,6,2,0,8,null,null,7,4\], p = 5, q = 5
**Output:** 0
**Explanation:** The distance between a node and itself is 0.

**Constraints:**

* The number of nodes in the tree is in the range `[1, 10^4]`.
* `0 <= Node.val <= 10^9`
* All `Node.val` are **unique**.
* `p` and `q` are values in the tree.
