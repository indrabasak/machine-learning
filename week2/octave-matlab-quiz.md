Octave/Matlab Tutorial Quiz
===============================

**Q1.** Suppose I first execute the following Octave/Matlab commands:

```
A = [1 2; 3 4; 5 6];
B = [1 2 3; 4 5 6];
```

Which of the following are then valid commands? Check all that apply. 
(Hint: A' denotes the transpose of A.)

   1. C = A * B;
   
   1. C = B' + A;
   
   1. C = A' * B;
   
   1. C = B + A;
   
**A2.** 1, 2

```
1. 
>> C = A * B;
>> C
C =

    9   12   15
   19   26   33
   29   40   51
```

```
2.
>> C = B' + A;
>> C
C =
   
       2    6
       5    9
       8   12
```

```
3.
>>  C = A' * B;
   error: operator *: nonconformant arguments (op1 is 2x3, op2 is 2x3)
```

```
4. 
>> C = B + A;
error: operator +: nonconformant arguments (op1 is 2x3, op2 is 3x2)
```

**Q2.** 
```aidl

         | 16    2    3    13 ⎥
Let A =  |  5   11   10     8 ⎥
         |  9    7    6    12 ⎥
         |  4   14   15     1 ⎥
         
Which of the following indexing expressions gives 
B =    16    2
        5   11
        9    7
        4   14
​	         
```

**A2.** 1, 2

```
octave:7> A = [16 2 3 13; 5 11 10 8; 9 7 6 12; 4 14 15 1]
A =

   16    2    3   13
    5   11   10    8
    9    7    6   12
    4   14   15    1

octave:8> B = A(:, 1:2);
octave:9> B
B =

   16    2
    5   11
    9    7
    4   14

octave:10> B = A(1:4, 1:2);
octave:11> B
B =

   16    2
    5   11
    9    7
    4   14

octave:12> B = A(:, 0:2)
error: subscript indices must be either positive integers less than 2^31 or logicals
octave:12> B = A(0:4, 0:2);
error: subscript indices must be either positive integers less than 2^31 or logicals
octave:12> 
```

**Q3.** Let A be a 10 by 10 matrix and x be a 10-element vector. Your friend 
wants to compute the product AxA and writes the following code:

```aidl
v = zeros(10, 1);
for i = 1:10
  for j = 1:10
    v(i) = v(i) + A(i, j) * x(j);
  end
end
```

How would you vectorize this code to run without any for loops? 
Check all that apply.

  1. v = A * x;
  
  1. v = Ax;
  
  1. v = x' * A;
  
  1. v = sum (A * x);
  
**A3.** 4 (Wrong)

**Q4.** Say you have two column vectors _v_ and _w_, each with 7 elements 
(i.e., they have dimensions 7x1). Consider the following code:

```
z = 0;
for i = 1:7
  z = z + v(i) * w(i)
end
```

Which of the following vectorizations correctly compute z? Check all that apply.

  1. z = sum(v .* w);
  
  1. z = w' * v;
  
  1. z = v * w';
  
  1. z = w * v';
  
**A4.** 1, 2
```
octave:18> y = sum (v .* w)
y =  32
octave:19> y = w' * v
y =  32
octave:20> y = v * w'
y =

    4    5    6
    8   10   12
   12   15   18

octave:21> y = w * v'
y =

    4    8   12
    5   10   15
    6   12   18

octave:22> z = 0;
octave:23> for i = 1:3,
> z = z + v(i) * w(i);
> end;
octave:24> z
z =  32

```  

*Q5.** In Octave/Matlab, many functions work on single numbers, vectors, 
and matrices. For example, the sin function when applied to a matrix will 
return a new matrix with the sin of each element. But you have to be careful, 
as certain functions have different behavior. Suppose you have an 7x7 matrix 
_**X**_. You want to compute the log of every element, the square of every 
element, add 1 to every element, and divide every element by 4. 
You will store the results in four matrices, A, B, C, D. 
One way to do so is the following code:

```
for i = 1:7
  for j = 1:7
    A(i, j) = log(X(i, j));
    B(i, j) = X(i, j) ^ 2;
    C(i, j) = X(i, j) + 1;
    D(i, j) = X(i, j) / 4;
  end
end
```

Which of the following correctly compute A, B, C, or D? Check all that apply.

  1. C = X + 1;
     
     
  1. D = X / 4;
     
     
  1. B = X .^ 2;
     
     
  1.  B = X ^ 2;
  
**A5.** 1, 2, 3

```aidl
> X = [1 2 3; 4 5 6; 7 8 9]
X =

   1   2   3
   4   5   6
   7   8   9

octave:26> for i = 1:3,
> for j = 1:3,
> A(i, j) = log(X(i, j));
> B(i, j) = X(i, j) ^ 2;
> C(i, j) = X(i, j) + 1;
> D(i, j) = X(i, j) / 4;
> end;
> end;
octave:27> A
A =

    0.00000    0.69315    1.09861   13.00000
    1.38629    1.60944    1.79176    8.00000
    1.94591    2.07944    2.19722   12.00000
    4.00000   14.00000   15.00000    1.00000

octave:28> B
B =

    1    4    9
   16   25   36
   49   64   81
    4   14    0

octave:29> C
C =

    2    3    4
    5    6    7
    8    9   10

octave:30> D
D =

   0.25000   0.50000   0.75000
   1.00000   1.25000   1.50000
   1.75000   2.00000   2.25000

octave:31> 
octave:31> X + 1
ans =

    2    3    4
    5    6    7
    8    9   10

octave:32> X/4
ans =

   0.25000   0.50000   0.75000
   1.00000   1.25000   1.50000
   1.75000   2.00000   2.25000

octave:33> X .^ 2;
octave:34> X .^ 2
ans =

    1    4    9
   16   25   36
   49   64   81

octave:35> B
B =

    1    4    9
   16   25   36
   49   64   81
    4   14    0

octave:36> X ^ 2;
octave:37> X ^ 2
ans =

    30    36    42
    66    81    96
   102   126   150

octave:38> 


```