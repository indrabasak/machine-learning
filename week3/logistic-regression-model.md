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

  1. If h<sub>θ</sub>(x) = y, then cost(h<sub>θ</sub>(x), y) = 0 
  (for y = 0 and y = 1). (**True**)
  
  1. If y = 0, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 1. (**True**)
  
  1. If y = 0, then cost(h<sub>θ</sub>(x), y) → ∞ as h<sub>θ</sub>(x) → 0.
  
  1. Regardless of whether y = 0 or y = 1, if h<sub>θ</sub>(x) = 0.5, then 
cost(h<sub>θ</sub>(x), y) > 0. (**True**)

## Simplified Cost Function and Gradient Descent

Note: [6:53 - the gradient descent equation should have a 1/m factor]

We can compress our cost function's two conditional cases into one case:

Cost(h<sub>θ</sub>(x), y) = −ylog(h<sub>θ</sub>(x)) − (1 − y)log(1 − h<sub>θ</sub>(x))

Notice that when y is equal to 1, then the second term (1 − y)log(1 − h<sub>θ</sub>(x))
will be zero and will not affect the result. If y is equal to 0, then the first 
term −ylog(h<sub>θ</sub>(x)) will be zero and will not affect the result.

We can fully write out our entire cost function as follows:

J(θ) = −1/m ∑<sup>i=1</sup><sub>m</sub>[y<sup>(i)</sup>
  log(h<sub>θ</sub>(x<sup>(i)</sup>) + (1 − y<sup>(i)</sup>)log(1 − h<sub>θ</sub>(x<sup>(i)</sup>))] 
  
A vectorized implementation is:

h = g(Xθ)

J(θ) = 1/m⋅(−y<sup>T</sup>log(h) − (1 − y)<sup>T</sup>log(1 − h))

### Gradient Descent

Remember that the general form of gradient descent is:

Repeat {

θ<sub>j</sub> := θ<sub>j</sub> − α * ∂/∂θ<sub>j</sub> J(θ)

}

We can work out the derivative part using calculus to get:

Repeat {

θ<sub>j</sub> := θ<sub>j</sub> − α/m * ∑<sup>m</sup><sub>i=1</sub>(
 h<sub>θ</sub>(x<sup>(i)</sup>) - y<sup>(i)</sup>)x<sub>j</sub><sup>(i)</sup>)

}

Notice that this algorithm is identical to the one we used in linear regression.
 We still have to simultaneously update all values in theta.

A vectorized implementation is:

θ := θ − α/m X<sup>T</sup>(g(Xθ) − y)

![](./img/week3-13.png)
_______________

**Q.** Suppose you are running gradient descent to fit a logistic regression model 
with parameter θ ∈ R<sup>n+1</sup>. Which of the following is a reasonable way 
to make sure the learning rate α is set properly and that gradient descent is 
running correctly?

  1. Plot J(θ)= 1/m ∑<sup>i=1</sup><sub>m</sub>(h<sub>θ</sub>(x<sup>(i)</sup>)
  − y<sup>(i)</sup>)<sup>2</sup> as a function of the number of iterations 
  (i.e. the horizontal axis is the iteration number) and make sure J(θ) is 
  decreasing on every iteration.
  
  1. Plot J(θ) = −1/m ∑<sup>i=1</sup><sub>m</sub>[y<sup>(i)</sup>
  log(h<sub>θ</sub>(x<sup>(i)</sup>) + (1 − y<sup>(i)</sup>)log(1 − h<sub>θ</sub>(x<sup>(i)</sup>))] 
  as a function of the number of iterations and make sure J(θ) is decreasing 
  on every iteration. (**True**)
  
  1. Plot J(θ) as a function of θ and make sure it is decreasing on every 
  iteration.
  
  1. Plot J(θ) as a function of θ and make sure it is convex.
  
_______________

**Q.** One iteration of gradient descent simultaneously performs these updates:

θ<sub>0</sub> := θ<sub>0</sub> − α.1/m ∑<sup>i=1</sup><sub>m</sub>
(h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>).x<sub>0</sub><sup>(i)</sup>

θ<sub>1</sub> := θ<sub>1</sub> − α.1/m ∑<sup>i=1</sup><sub>m</sub>
(h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>).x<sub>1</sub><sup>(i)</sup>

...

θ<sub>n</sub> := θ<sub>1</sub> − α.1/m ∑<sup>i=1</sup><sub>m</sub>
(h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>).x<sub>n</sub><sup>(i)</sup>

We would like a vectorized implementation of the form θ := θ − αδ (for some 
vector δ ∈ R<sup>n+1</sup>).

What should the vectorized implementation be?

  1. θ := θ − α.1/m ∑<sup>i=1</sup><sub>m</sub>
     [(h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>).x<sup>(i)</sup>] (**True**)
     
  1. θ := θ − α.1/m [∑<sup>i=1</sup><sub>m</sub>
       (h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>)].x<sup>(i)</sup>
  
  1. θ := θ − α.1/m x<sup>(i)</sup>[∑<sup>i=1</sup><sub>m</sub>
         (h<sub>θ</sub>(x<sup>(i)</sup>) − y<sup>(i)</sup>)]
         
  1. All of the above are correct implementations.
​	

