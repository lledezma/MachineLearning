# MachineLearning

This repository contains MATLAB implementations of several fundamental machine learning algorithms:

## Contents

- **LinearRegression.m**  
  Implements linear regression, including manual calculation of regression coefficients and R², as well as polynomial fitting.

- **kmeans.m**  
  Demonstrates k-means clustering on a dataset, visualizes clusters, and evaluates clustering quality using silhouette scores.

- **mykmeans.m**  
  Custom implementation of the k-means clustering algorithm.

- **SVM.m**  
  Applies Support Vector Machine classification to Fisher's iris dataset (excluding setosa), visualizes support vectors and decision boundary.

- **NeuralNetwork.m**  
  Builds and trains a simple feedforward neural network for regression using MATLAB's network object.

## Usage

Open any `.m` file in MATLAB and run it to see the corresponding algorithm in action.  
Some scripts require specific datasets (e.g., `Lecture6_DataSet.txt` for k-means).

## Requirements

- MATLAB R2016b or newer recommended
- For SVM, the built-in `fisheriris` dataset is used

## License

This project is for educational/demo purposes.