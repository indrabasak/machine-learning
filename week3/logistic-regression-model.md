Logistic Regression Model
===========================

## Cost Function

We cannot use the same cost function that we use for linear regression because 
the Logistic Function will cause the output to be wavy, causing many local 
optima. In other words, it will not be a convex function.

Instead, our cost function for logistic regression looks like:

![](./img/week3-10.png)

J(θ) = 1/m ∑<sup>m</sup> <sub>i=1</sub> Cost(h<sub>θ</sub>(x<sup>(i)</sup>), y<sup>(i)</sup>)

When y = 1, we get the following plot for J(θ) vs h<sub>θ</sub>(x):

![](./img/week3-11.png)

Similarly, when y = 0, we get the following plot for J(θ) vs h<sub>θ</sub>(x):

![](./img/week3-12.png)

Cost(h<sub>θ</sub>(x), y) = 0 if h<sub>θ</sub>(x) = y

Cost(h<sub>θ</sub>(x), y) → ∞ if y = 0 and h<sub>θ</sub>(x) → 1

Cost(h<sub>θ</sub>(x), y) → ∞ if y = 1 and h<sub>θ</sub>(x) → 0 

If our correct answer 'y' is 0, then the cost function will be 0 if our 
hypothesis function also outputs 0. If our hypothesis approaches 1, then the 
cost function will approach infinity.

If our correct answer 'y' is 1, then the cost function will be 0 if our
 hypothesis function outputs 1. If our hypothesis approaches 0, then the 
 cost function will approach infinity.
 
 Note that writing the cost function in this way guarantees that J(θ) is 
 convex for logistic regression.



**Q.** Consider minimizing a cost function J(θ). Which one of these 
functions is convex?

![](./img/week3-6.png)

![](./img/week3-7.png)

Correct 

![](./img/week3-8.png)

![](./img/week3-9.png)

**Q.** In logistic regression, the cost function for our hypothesis outputting 
(predicting) h<sub>θ</sub>(x) on a training example that has label y ∈ {0, 1} is:

cost(h<sub>θ</sub>(x), y) = −logh<sub>θ</sub>(x)           if y = 1

cost(h<sub>θ</sub>(x), y) = −log(1- h<sub>θ</sub>(x))      if y = 0

Which of the following are true? Check all that apply.

  **1.** If h<sub>θ</sub>(x) = y, then cost(h<sub>θ</sub>(x), y) = 0 
  (for y = 0 and y = 1).
  
  **1.** If y = 0, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 1.
  
  1. If y = 0, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 0.
  
  **1.** Regardless of whether y = 0 or y = 1, if h<sub>θ</sub>(x) = 0.5, then 
  cost(h<sub>θ</sub>(x), y)> 0.

​## Simplified Cost Function and Gradient Descent

