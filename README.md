# 🎯 Flutter Guess The Number

Una divertida aplicación móvil desarrollada en Flutter donde el jugador debe adivinar un número aleatorio del 0 al 100 utilizando un control deslizante. ¡Gana puntos según qué tan cerca estés del número objetivo!

---

## 🚀 Características

- Adivina el número usando un slider.
- Puntuación dinámica basada en la proximidad al número objetivo.
- Sistema de rondas acumulativas.
- Visualización de las 5 mejores puntuaciones con fecha y hora.
- Reinicio de ronda y reinicio total del juego.
  
---

## 🧠 Lógica del Juego

- El juego genera un número aleatorio entre 0 y 100 al iniciar.
- El jugador usa un **slider** para seleccionar un número.
- Se calculan puntos en base a la cercanía al número objetivo.
- Las mejores 5 puntuaciones se guardan junto con un timestamp.
  
---

## 🧱 Arquitectura

El proyecto sigue el patrón **MVVM (Model - View - ViewModel)**:

- **Model**: `Game` — Contiene la lógica central del juego.
- **ViewModel**: `ViewModel` — Conecta la UI con el modelo y notifica cambios.
- **Views**:
  - `BackgroundView` — Panel superior con botones y marcador.
  - `ContentView` — Contiene el número objetivo, slider y botón TRY.
  - `MarksView` — Muestra las mejores puntuaciones.
  - `NumberView`, `RoundedView`, `SliderWidget` — Widgets reutilizables.

---

## 🛠️ Tecnologías

- **Flutter**
- **Dart**
  
---
