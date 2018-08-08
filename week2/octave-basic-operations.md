Octave Tutorial
==========================

## Basic Operations

### Elementary Math Operations
```
octave-3.2.4.exe:1> 5+6
ans = 11
octave-3.2.4.exe:2> 3-2
ans = 1
octave-3.2.4.exe:3> 5*8
ans = 40
octave-3.2.4.exe:4> 1/2
ans = 0.50000
octave-3.2.4.exe:5> 2^6
ans = 64
octave-3.2.4.exe:6>
```

### Logical Operations

```
octave-3.2.4.exe:6> 1 == 2 % false  (% stands for comments)
ans = 0
octave-3.2.4.exe:7> 1 ~= 2 (remember not equal is not !=)
ans = 1
octave-3.2.4.exe:8> 1 && 0 % AND
ans = 0
octave-3.2.4.exe:9> 1 || 0 % OR
ans = 1
octave-3.2.4.exe:10> xor(1,0)
ans = 1
```

### Changing Octave Prompt
`octave-3.2.4.exe:11>` is the octave prompt. If you don't want prompt,

```
octave-3.2.4.exe:11> PS1('>> ');
>>
>>
```

### Variables

```
>> a = 3
a = 3
>> a = 3; % semicolon supresses output
>> 
>> a = 3
a = 3
>> a=3;
>> 
>> b = 'hi'; % string assignment
>> b
b = hi
>>
>> c = (3>=1)
c = 1
>>
>> a = pi;
>> a % printing out variable
a = 3.1416
>> disp(a);  % more complex printing
3.1416
>> disp(sprintf('2 decimals: %0.2f', a)) % C style printing
2 decimals: 3.14
>> disp(sprintf('2 decimals: %0.6f', a))
6 decimals: 3.141593
>> format long
>> a
a = 3.14159265358979
>> format short % restores default
>> a
a = 3.1416
>> 
```

### Vectors and Matrices

```
>> A = [1 2; 3 4; 5 6]
A = 
    1    2
    3    4
    5    6
>>
>> A = [1 2;
> 3 4;
> 5 6]
A = 
    1    2
    3    4
    5    6
>>
>>
>> v [1 2 3]
v =
    1   2   3
>>
>>
>> v [1; 2; 3]
v =
    1
    2
    3
>>
>> 
>> v = 1:0.1:2              % 1 to 2 with increments of 0.1
v =
  Columns 1 through 7:
  1.0000    1.1000    1.2000    1.3000    1.4000    1.5000    1.6000
  Columns 8 through 11:
  1.7000    1.8000    1.9000    2.0000   
>> 
>>
>> v = 1:6
v =
    1    2    3    4    5    6
>>
>>
>> ones(2,3)
ans =
      1    1    1
      1    1    1
>>
>>
>> C = 2*ones(2,3)
C =
    2    2    2
    2    2    2
>>
>>
>> C = [2 2 2; 2 2 2]
C =
    2    2    2
    2    2    2
>>
>> 
>> w = ones(1,3)
w =
    1    1   1
>>
>>
>> w = zeros(1, 3)
w = 
    0    0    0
>>
>>
>> w = rand(1,3)   %this gives 1x3 matrix of all random numbers
w =
    0.91477   0.14359    0.84860
>>    
>>
>> rand(3,3)
ans = 
      0.467747    0.684916    0.346052
      0.022935    0.603373    0.307135
      0.212884    0.857236    0.456541
>>
>> rand(3,3)
ans =
      0.082306    0.450805   0.307135
      0.218295    0.554723   0.819940
      0.728084    0.893041   0.312381
>>
>> w = randn(1,3)  % Gaussian distribution with mean
w =
    -0.33717    1.26847    -0.28211
>>
>> w = -6 + sqrt(10)*(randn(1,10000));
>> hist(w)
>> hist(w, 50) 
>>
>>  eye(4)   % identity matrix, eye pun on the word identity
ans =

Diagonal Matrix
     1    0    0    0
     0    1    0    0
     0    0    1    0
     0    0    0    1
>>      
>>  I = eye(4)  
I =

Diagonal Matrix
     1    0    0    0
     0    1    0    0
     0    0    1    0
     0    0    0    1
>>      
>>  I = eye(6)  
I =

Diagonal Matrix
     1    0    0    0    0   0
     0    1    0    0    0   0
     0    0    1    0    0   0
     0    0    0    1    0   0
     0    0    0    0    1   0
     0    0    0    0    0   1     
>>  I = eye(3)  
I =

Diagonal Matrix
     1    0    0 
     0    1    0 
     0    0    1 
>>     
>> help eye
eye's a  built-in function
...
>> help rand
... brings up documentation for rand  
>> help help        
```
