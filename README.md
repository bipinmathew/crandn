# crandn

Generate correlated normal random vectors.
Y = CRANDN(mu,K,num) Generate num random vectors with mean mu and covariance K.
mu is a vector of length M and K is a symmetric positive semidefinite matrix of size MxM.
Y is an Mxnum matrix, where each column is a correlated random vector of length M with mean mu and covariance K. 

## Example
```matlab
 % Generate 10000 samples of correlated random variables with mean [1 2]
 % and variance [1 0.5;0.5 1]
 Y=crandn([1 2],[1 0.5;0.5 1],10000);

 % Validate resulting output.
  mean(Y.')

  ans =

      0.9920    1.9990
  cov(Y')

  ans =

      0.9909    0.4957
      0.4957    1.0022

```
