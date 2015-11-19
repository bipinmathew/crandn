function [Y] = crandn(mu,K,num)
% CRANDN  Generate correlated normal random vectors.
%   Y = CRANDN(mu,K,num) Generate num random vectors with mean mu and covariance K.
%   mu is a vector of length M and K is a symmetric positive semidefinite matrix of size MxM.
%   Y is an Mxnum matrix, where each column is a correlated random vector of length M with mean mu and covariance K. 

  [M N] = size(K);
  mu = mu(:);
  if(M~=N)
    error('Correlation matrix must be square');
  elseif (M~=length(mu))
    error('Dimention mismatch between mu and K.');
  end
  Y=(chol(K).'*randn(M,num))+repmat(mu,1,num);
end

