function [ d ] = dist( x, y )
%DIST  Computes the Euclidean distance between points in X and Y
%   D = DIST(X,Y) mimics some of the functionality of the "dist" function  
%   in the MATLAB neural network toolbox. Specifally, it computes the 
%   distances between all rows in matrix X and all columns in matrix Y
%
%   INPUTS: 
%       X: An N-by-M matrix of N individual M-dimensional points 
%       Y: An M-by-K matrix of K individual M-dimensional points
%
%   OUTPUTS:
%      D: N-by-K matrix of distances between all pairs of the N points in 
%         matrix X and the K points in matrix Y
%

% -------------------------------------------------------------------------
% Code written by: Joel B. Harley
% Last updated: June 28, 2014
% -------------------------------------------------------------------------
%

    a = zeros(size(x,1), size(y,2));
    for n = 1:size(x,2)
         a = a + abs(outersum(x(:,n),-y(n,:))).^2;
    end
    d = sqrt(a);

end

function y=outersum(a,b)
    a=a(:);
    b=b(:).';
    y=repmat(a,size(b))+repmat(b,size(a));
end



