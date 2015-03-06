function X=delay(X,n)
%function create delay matrix from vector X, from vector 'n',
%there there are delays of vector. length(n)=numbers of delays
% 
% X=delay(X,n)
% 
%exapmle:
% x=[0.8147    0.9058    0.1270    0.9134    0.6324    0.0975    0.2785    0.5469    0.9575    0.9649];
% delay_vector=[0 2 6];
% y=delay(x',delay_vector)
% 
% y =
% 
%     0.8147    0.9058    0.1270    0.9134    0.6324    0.0975    0.2785    0.5469    0.9575    0.9649
%          0         0          0.8147    0.9058    0.1270    0.9134    0.6324    0.0975    0.2785    0.5469
%          0         0          0            0            0            0            0.8147    0.9058    0.1270    0.9134


for i=1:length(n)
    X(i+1,:)=circshift(X(1,:),[0 n(i)]);
    X(i+1,1:n(i))=0; 
end
X=X(2:end,:);
end

% X=X';
% 
% for i=1:length(n)
%     X(:,i+1)=circshift(X(:,1),n(i));
%     
%     X(1:n(i),i+1)=0; 
% end
% X=X(:,2:end);
% X=X';
% end