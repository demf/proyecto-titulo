# Proyecto Título: Predicción de Velocidad del Transporte Público en Santiago

Este proyecto se enfoca en la predicción de velocidad del transporte público en Santiago, Chile, utilizando modelos espacio-temporales avanzados de aprendizaje automático.

## El codigo se puede ejecutar desde el siguiente [Notebook](https://colab.research.google.com/drive/1es7DdhiBm5KzO2FIfY1Hobm2J5dzRhYn?usp=sharing)

## Objetivo

El objetivo principal es comparar y contrastar el desempeño predictivo de dos modelos de Machine Learning: Temporal Graph Convolutional Network (T-GCN) y Spatio-Temporal Graph Convolutional Network (STGCN), utilizando datos locales de la Avenida Alameda Libertador Bernardo O'Higgins en Santiago para predecir la velocidad del tráfico a corto plazo.

## Características principales

- Utilización de datos de velocidad instantánea del transporte público en Santiago.
- Implementación de modelos espacio-temporales avanzados (T-GCN y STGCN).
- Comparación con modelos base como regresión lineal, MLP, LSTM, GRU y ConvLSTM.
- Predicción de velocidades para intervalos de 10, 20 y 30 minutos.
- Análisis de diferentes configuraciones de grillas espaciales (51, 65 y 75 cuadrantes).

## Tecnologías utilizadas

- Python
- TensorFlow
- PyTorch
- StellarGraph
- Pandas, NumPy, Matplotlib
- Scikit-learn
