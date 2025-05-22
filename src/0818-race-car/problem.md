# Race Car

Your car starts at position 0 and speed +1 on an infinite number line. Your car can go into negative positions. Your car drives automatically according to a sequence of instructions 'A' (accelerate) and 'R' (reverse):

When you get an instruction 'A', your car does the following:
<ul>
 <li><code>position += speed</code></li>
 <li><code>speed *= 2</code></li>
</ul>
</li>
<li>When you get an instruction <code>&#39;R&#39;</code>, your car does the following:
<ul>
 <li>If your speed is positive then <code>speed = -1</code></li>
 <li>otherwise <code>speed = 1</code></li>
</ul>
Your position stays the same.</li>

For example, after commands "AAR", your car goes to positions 0 --> 1 --> 3 --> 3, and your speed goes to 1 --> 2 --> 4 --> -1.
Given a target position target, return the length of the shortest sequence of instructions to get there.

Example 1:

Input: target = 3
Output: 2
Explanation:
The shortest instruction sequence is "AA".
Your position goes from 0 --> 1 --> 3.

Example 2:

Input: target = 6
Output: 5
Explanation:
The shortest instruction sequence is "AAARA".
Your position goes from 0 --> 1 --> 3 --> 7 --> 7 --> 6.

Constraints:

1 <= target <= 10^4
