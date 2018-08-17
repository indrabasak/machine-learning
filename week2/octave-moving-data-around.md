Octave Tutorial
==========================

## Moving Data Around

```
>> A = [1 2; 3 4; 5 6]
A = 
    1    2
    3    4
    5    6
>> size(A)  % returns the size A in 1x2 matrix form
ans =
    3    2
>> sz = size(a)
sz =
    3    2
>> size(sz)
ans =
    1    2
>> size(A, 1)  % gives back first dimension of A, i.e, number of rows
ans = 3
>> size(A, 2)  % gives back second dimension of A, i.e, number of columns
   ans = 2
>> 
>> v = [ 1 2 3 4]
v =
    1    2    3    4
>> length(v)     % gives size of the longest dimension
ans = 4
>> length(A)
ans = 3
>> length([1;2;3;4;5])     % length is usually applied to vector than matrices
ans = 5
>> 
```

### Load Data

```
>> pwd       % shows current directory or path
ans = C:\Octave\3.2.4_gcc-4.4.0\bin
>> cd 'C:\Users\ang\Desktop'     % to change directory
>> pwd
ans = C:\Users\ang\Desktop
>> ls        % list directories
 Volume in drive C is ...
 ...
 Directory of C:\Users\ang\Desktop
[.]               [lecture-slides]       squareThisNumber.m
costFunctionJ.m    matlab-session.m
featuresX.dat      priceY.dat
 ...
 
>> load featuresX.dat
>> load priceY.dat
>> load('featuresX.dat')
>> 
>> who        % who command shows what variables I have in my Octave workspace
A     I    ans    C             priceY    v
C     a    b      featuresX     sz        w

>> featuresX  % display data stored in featuresX 
...
>> size(featuresX)
ans =
    47    2   % 47 rows and 2 columns of data stored
>> size(priceY)
ans =
    47    1 % 47 dimensional vector
    
>> whos  % gives varioables with size
Variables in the current scope:

  Attr Name          Size           Bytes      Class
  ==== ====          ====           =====      =====
       A             3x2               48      double
       ...
       featuresX     47x2             752       double
          priceY     47x1             376       double    
       ...   
Total is 10201 elements using 81347 bytes
>>
>> clear featuresX    % removes a variable
>> whos  % gives varioables with size
Variables in the current scope:

  Attr Name          Size           Bytes      Class
  ==== ====          ====           =====      =====
       A             3x2               48      double
       ...
       priceY        47x1             376       double    
       ...   
>> 
>> v = priceY(1:10)     % prints first 10 row of the vector
v =
    3999
    ...
    2425
>> 
>> save hello.mat v;   % saves v in a file named hello.mat -some what compressed binary
>> clear   % clears up all variables
>> whos
>> who
>> load hello.mat
>> whos
 Variables in the current scope:
 
   Attr Name          Size           Bytes      Class
   ==== ====          ====           =====      =====
        V             10x1              80      double
Total is 10 elements using 80 bytes
>>
>> save hello.mat v -ascii;   % saves v in a file named hello.mat in human readable ASCII format
```

### Manipulate Data

```
>> A = [1 2; 3 4; 5 6]
A =
    1    2
    3    4
    5    6
    
>>     
>> A(3, 2)  % means element a row 3 and column 2
ans = 6  
>> A (2, :) % means every element along that row/column
ans =
    3    4
>> A(:,2)
ans =
    2
    4
    6
>> A([1 3], :)   % means all elements from row 1 and 3 - more sophisticated, seldom used
ans = 
    1    2
    5    6
    
>> A(:,2)
ans =
    2
    4
    6
    
>> A(:,2) = [10; 11; 12]   % assignment replacing second column
A =
    1    10
    3    11
    5    12
    
>> A = [A, [100; 101; 102]]; % append another column vector to the right
A =
    1    10    100
    3    11    101
    5    12    102
    
>>   [100; 101; 102]
ans =
    100
    101
    102
 
>>  size(A)
ans =
    3    3  
    
>> A(:)  % put all elements of A into a single vector
ans =
    1
    3
    5
   10
   11
   12
  100 
  101
  102

>> A = [1 2; 3 4; 5 6];
>> B = [11 12; 13 14; 15 16];

>> A
A =
    1   2   
    3   4
    5   6
    
>> B 
B =
    11   12   
    13   14
    15   16
    
>> C = [A B]  % concatenating matrix B to A
C =
    1    2    11    12
    3    4    13    14
    5    6    15    16
    
>>   C = [A; B] % puts B below A
C =
    1   2   
    3   4
    5   6
   11  12
   13  14
   15  16
   
>>  size(C)
ans =
    6    2

>>   [A, B]  % is same as [A B]
ans =
         1    2    11    12
         3    4    13    14
         5    6    15    16    
```