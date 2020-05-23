clc;clear all;

% Load Fisher's iris data set. Removing the sepal lengths and widths and all observed setosa irises.
load fisheriris
inds = ~strcmp(species,'setosa');
X = meas(inds,1:2);
y = species(inds);

% fitcsvm trains or cross-validates a support vector machine
SVMModel = fitcsvm(X,y);
classOrder = SVMModel.ClassNames;
sv = SVMModel.SupportVectors;

figure
gscatter(X(:,1),X(:,2),y)
hold on
plot(sv(:,1),sv(:,2),'ko','MarkerSize',10)
fplot(@(x)-(SVMModel.Beta(1)*x+SVMModel.Bias)/-SVMModel.Beta(2))
legend('versicolor','virginica','Support Vector')
hold off