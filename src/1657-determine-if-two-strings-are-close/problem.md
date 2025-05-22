# Determine if Two Strings Are Close

Two strings are considered close if you can attain one from the other using the following operations:

Operation 1: Swap any two existing characters.
<ul>
 <li>For example, <code>a<u>b</u>cd<u>e</u> -&gt; a<u>e</u>cd<u>b</u></code></li>
</ul>
</li>
<li>Operation 2: Transform <strong>every</strong> occurrence of one <strong>existing</strong> character into another <strong>existing</strong> character, and do the same with the other character.
<ul>
 <li>For example, <code><u>aa</u>c<u>abb</u> -&gt; <u>bb</u>c<u>baa</u></code> (all <code>a</code>&#39;s turn into <code>b</code>&#39;s, and all <code>b</code>&#39;s turn into <code>a</code>&#39;s)</li>
</ul>
</li>

You can use the operations on either string as many times as necessary.
Given two strings, word1 and word2, return true if word1 and word2 are close, and false otherwise.

Example 1:

Input: word1 = "abc", word2 = "bca"
Output: true
Explanation: You can attain word2 from word1 in 2 operations.
Apply Operation 1: "abc" -> "acb"
Apply Operation 1: "acb" -> "bca"

Example 2:

Input: word1 = "a", word2 = "aa"
Output: false
Explanation: It is impossible to attain word2 from word1, or vice versa, in any number of operations.

Example 3:

Input: word1 = "cabbba", word2 = "abbccc"
Output: true
Explanation: You can attain word2 from word1 in 3 operations.
Apply Operation 1: "cabbba" -> "caabbb"
Apply Operation 2: "caabbb" -> "baaccc"
Apply Operation 2: "baaccc" -> "abbccc"

Constraints:

1 <= word1.length, word2.length <= 10^5
word1 and word2 contain only lowercase English letters.
