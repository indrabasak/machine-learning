Octave Tutorial
==========================

## Computing on Data

```
>> A = [1 2; 3 4; 5 6]
A =
    1   2   
    3   4
    5   6
    
>> B = [11 12; 13 14; 15 16]    
B =
    11   12   
    13   14
    15   16
    
>>  C = [1 1; 2 2]
C =
    1    1
    2    2
   
>> A * C   
ans =
     5     5
    11    11  
    17    17  
    
>> A .* B   % take each element of A and multiply by corresponding time of - element wise multiplication
ans =
    11    24
    39    56
    75    96  
    
>> A .^2    % element wise squaring
ans =
    1    4
    9   16
   25   36      
   
>> v = [1; 2; 3]
ans =
    1
    2
    3
    
>>  1 ./v     % element wise reciprocal of v
ans =
    1.00000
    0.50000
    0.33333
    
>> 1 ./A  % element wise inverse of A
ans = 
    1.00000    0.50000
    0.33333    0.25000
    0.20000    0.16667
    
>> log(v)   % element wise logarithm
ans = 
    0.00000
    0.69315
    1.09861
    
>> exp(v)   % element wise exponential
ans =
    2.7183
    7.3891
   20.0855
   
>> abs(v)   % absolute value of elements of v
ans =
    1
    2
    3
    
>> abs([-1; 2; -3])
ans =
    1
    2
    3
    
>> -v   % gives negative of v  - 1 * v
ans = 
    -1
    -2
    -3
    
>> v + ones(length(v), 1)
ans =
    2
    3
    4
    
>> length(v)
ans = 3

>> ones (3, 1)
ans =
    1
    1
    1
    
 >> v + ones(3, 1)
 ans =
     2
     3
     4
     
 >> v + 1   % element wise adds 1
  ans =
      2
      3
      4
      
>> A
A =
    1   2   
    3   4
    5   6
    
>> A'    % transpose A
ans =
    1    3    5
    2    4    6
    
>> (A')'  % transpose of transpose - returns to the original matrix
ans = 
    1   2   
    3   4
    5   6
    
>> a = [1  15  2  0.5]
a =
    1.00000    15.00000    2.00000    0.50000
    
>> val = max(a)    % return maximum value of an element from matrix a
val = 15

>> [val, ind] = max(a)  % returns maximum value and its index
val = 15
ind = 2

>> max(A)    % does column wise maximum
ans = 
    5    6
    
>> a < 3    % does element wise comparision with element values less than 3 - returns true (1) or false (0)
ans =
    1    0    1    1
    
>> find(a < 3)  % finds elements less than 3 and prints out the indices
ans =
    1    3    4
    
>> A = magic(3)  % returns N x N matix called magic square which has a magical
% property where all their rows, columns, and diagonal sum up to the same value
% not actuall useful for machine learning
A = 
    8    1    6
    3    5    7
    4    9    2
    
>> [r, c] = find(A >= 7)  % find all row and column indices where element value >= 7
r = 
    1
    3
    2
    
c = 
    1
    2
    3
    
> A(2, 3)
ans = 7

>> a
a =
    1.00000    15.00000    2.00000    0.50000
    
>> sum(a)   % sums all the elements of matrix a
and = 18.500

>> prod(a)   % product of the elements of matrix a
ans = 15

>> floor(a)  % rounded down
a =
    1    15    2    0

>> ceil(a)   % rounded up
a = 1
    1    15    2    1  
    
>> rand(3)    % generate 3 x 3 matrix with random numbers
ans =
    0.8172101    0.7629192    0.5765014
    0.8586035    0.8683389    0.0034115
    0.6242835    0.9279313    0.7502126
    
>> max(rand(3), rand(3)) % element wise maximum of two 3x3 random matrices
ans =
    0.72763    0.78773    0.93872
    0.72363    0.83590    0.42763
    0.48315    0.41734    0.79961
    
>> A
A = 
    8    1    6
    3    5    7
    4    9    2
    
>>  max(A,[], 1)   % column wise maximum - take max in first dimension of A
ans =
    8    9    7             
``` max(A,[], 2)   % row wise maximum - take max in second dimension of A
ans =
    8
    7
    9
    
>>  max(A)    % defaults to column wise max
ans =
    8    9    7
    
>> max(max(A))
ans = 9

>>  A(:)   % turns matrix A into a vector
ans =
    8
    3
    4
    1
    5
    9
    6
    7
    2
    
>> max(A(:))    
ands = 9

>> A = magic(9)
...
>> sum(A, 1)     % column sum
ans =
    369    369    369    369    369    369    369    369    369
    
>> sum(A, 2)     % row sum
ans =
    369
    369
    369
    369    
    369    
    369    
    369    
    369    
    369   
    
>>    A .* eye(9)   % will take elment wide product
ans =
    47    0    0    0    0    0    0   0    0 
     0   68    0    0    0    0    0   0    0
     0    0    8    0    0    0    0   0    0
     ...
     
>> sum(sum(A.*eye(9)))
ans = 369

>> sum(sum(A.*flipud(eye(9))))
ans = 369

>> flipud(eye(3))   % flipped identity matrix of 3 (instead of 9 in video)
ans =
Permutation Matrix
   0    0    1
   0    1    0
   1    0    0
   
>> A = magic(3)
A =
    8    1    6
    3    5    7
    4    9    2
    
>> pinv(A)    % pseudo-inverse of matrix A
ans =
    0.147222    -0.144444    0.063889
   -0.061111     0.022222    0.105556
   -0.019444     0.188889   -0.102778
   
>> temp = pinv(a)    
temp =
    0.147222    -0.144444    0.063889
   -0.061111     0.022222    0.105556
   -0.019444     0.188889   -0.102778 
   
>> temp * A  % gives identity matrix with numerical roundup
ans =
    1.0000e+000    1.5266e-016    -2.8588e-015
   -6.1235e-015    1.0000e+000     6.2277e-015
    3.1364e-015   -3.6429e-016     1.0000e+000
>>      
```    
      
