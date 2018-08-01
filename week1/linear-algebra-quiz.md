Quiz: Linear Algebra
==========================

**Q1.** Let two matrices be

```
A = |4  3|    B = |-2  9|
    |6  9|        |-5  2|
```
        
What is A + B?

```
1. |6  12|
   |11 11|
   
2. |6  -6|
   |11  7|
   
3. |2  12|
   |1  11|

4. |2  9|
   |1  2|
```

**A1.** 3
```
  |(4 + -2)   (3 + 9)|  = |2  12|
  |(6 - 5)    (9 + 2)|    |1  11|
```

**Q2.** 
```
Let x = |5|
        |5|
        |2|
        |7|
```

What is _2 * x_?

```
1. |10|
   |10|
   | 4|
   |14|
   
2. |5/2|
   |5/2|
   |  1|
   |7/2|

3. |10  10  4  14|

4. |5/2  5/2  1  7/2|

```

**A2.** 1
```
   |2 * 5|    |10|
   |2 * 5|    |10|
   |2 * 2| =  | 4|
   |2 * 7|    |14|
```

**Q3.** Let u be a 3-dimensional vector, where specifically

```
    |8|
u = |1|
    |4|
```

What is u<sup>T</sup>?

```
1.  |4|
    |1|
    |8|
    
2. |8  1  4|

3. |4  1  8|

4. |8|
   |1|
   |4|
```

**A3.** 2

**Q4.** Let u and v be 3-dimensional vectors, where specifically

```
    | 4| 
u = |-4|
    | 3|
    
and
    | 4|
v = | 2|
    | 4|
```

What is u<sup>T</sup>v?

(Hint: u<sup>T</sup> is a 1 x 3 dimensional matrix, and v can also be seen as a 3 x 1 matrix. The answer you want 
can be obtained by taking the matrix product of u<sup>T</sup> and v.) Do not add brackets to your answer.

**A4.** 20
```
uT = |4  -4  3|

Therefore,

|4  -4  3|     | 4|     
            x  | 2|  =  | 4 * 4  + -4 * 2 + 3 * 4|  = | 16  - 8 + 12| = 20
               | 4|

```

**Q5.** Let A and B be 3 x 3 (square) matrices. Which of the following must necessarily hold true? Check all that apply.

  1. If C = A * B, then C is a 6 x 6 matrix.
  
  1. If v is a 3 dimensional vector, then A * B * v is a 3 dimensional vector.
  
  1. A + B = B + A
  
  1. A ∗ B ∗ A = B ∗ A ∗ B
  
  
**A5.** 2, 3