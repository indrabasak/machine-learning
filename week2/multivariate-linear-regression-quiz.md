Linear Regression with Multiple Variables Quiz
==============================================

**Q1.** Suppose m=4 students have taken some class, and the class had a 
midterm exam and a final exam. You have collected a dataset of their scores 
on the two exams, which is as follows:

| midterm exam  | (midterm exam)</sup>2</sup> | final exam  |
| ------------- | --------------------------- | ----------- |
| 89            | 7921                        | 96          |
| 72            | 5184                        | 74          |
| 94            | 8836                        | 87          |
| 69            | 4761                        | 78          |

You'd like to use polynomial regression to predict a student's final exam 
score from their midterm exam score. Concretely, suppose you want to fit a 
model of the form h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub>x<sub>1</sub> + 
θ<sub>2</sub>x<sub>2</sub>, where x<sub>1</sub> is the midterm score and 
x<sub>2</sub> is (midterm score)<sup>2</sup>. Further, you plan to use 
both feature scaling (dividing by the "max-min", or range, of a feature) 
and mean normalization.

What is the normalized feature x<sub>1</sub><sup>(3)</sup>? (Hint: midterm = 94, 
final = 87 is training example 3.) Please round off your answer to two decimal 
places and enter in the text box below.

**A1.** 

h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub>x<sub>1</sub> + θ<sub>2</sub>x<sub>2<sub>

h<sub>θ</sub>(x) = θ<sub>0</sub> + θ<sub>1</sub>(94 - (89 + 72 + 94 + 69)/4)/(94 - 69) + 
θ<sub>2</sub>(8836 - (7921 + 5184 + 8836 + 4761)/4)/(8836 - 4761)

h<sub>θ</sub>(x) = θ<sub>0</sub> + 0.52θ<sub>1</sub> + 0.532θ<sub>2</sub>

normalized feature x<sub>1</sub><sup>(3)</sup> = **0.52**

**Q2.** You run gradient descent for 15 iterations with α = 0.3 and compute 
J(θ) after each iteration. You find that the value of J(θ) increases over
time. Based on this, which of the following conclusions seems most plausible?

  1. α = 0.3 is an effective choice of learning rate.
  
  1. Rather than use the current value of α, it'd be more promising to try a 
  larger value of α (say α = 1.0).
  
  1. Rather than use the current value of α, it'd be more promising to try a 
  smaller value of α (α = 0.1).
  
**A2.** **3** (since if α is too large: ￼may not decrease on every iteration 
and thus may not converge). 

**Q3.** Suppose you have m = 23 training examples with n = 5 features 
(excluding the additional all-ones feature for the intercept term, which you 
should add). The normal equation is θ=(X<sup>T</sup>X)<sup>−1</sup>X<sup>T</sup> y. 
For the given values of m and n, what are the dimensions of θ, X, and y in 
this equation?

  1. X is 23 × 6, y is 23 × 6, θ is 6 × 6
  
  1. X is 23 × 5, y is 23 × 1, θ is 5 × 1
  
  1. X is 23 × 6, y is 23 × 1, θ is 6 × 1
  
  1. X is 23 × 6, y is 23 × 1, θ is 5 × 5
  
**A3.** **3**

**Q4.** Suppose you have a dataset with m = 1000000 examples and n = 200000 
features for each example. You want to use multivariate linear regression to 
fit the parameters θ to our data. Should you prefer gradient descent or the 
normal equation?

  1. The normal equation, since gradient descent might be unable to find 
  the optimal θ.
  
  1. Gradient descent, since (X<sup>T</sup>X)<sup>−1</sup> will be very slow to 
  compute in the normal equation.
  
  1. The normal equation, since it provides an efficient way to directly find 
  the solution.
  
  1. Gradient descent, since it will always converge to the optimal θ.
  
 **A4.** **2** (Works well when n is large when n = 10<sup>6</sup>) 
 
**Q5.** Which of the following are reasons for using feature scaling? 

  1. It is necessary to prevent the normal equation from getting stuck in local optima.
  
  1. It prevents the matrix X<sup>T</sup>X (used in the normal equation) 
  from being non-invertable (singular/degenerate).
  
  1. It speeds up gradient descent by making it require fewer iterations to 
  get to a good solution.
  
  1. It speeds up gradient descent by making each iteration of gradient 
  descent less expensive to compute.
  
 **A5.** **3** (We can speed up gradient descent by having each of our input values in roughly 
the same range. This is because θ will descend quickly on small ranges and 
slowly on large ranges, and so will oscillate inefficiently down to the 
optimum when the variables are very uneven.)