# Simulación de datos
set.seed(123)
n <- 100
horas_estudio <- rnorm(n, mean = 5, sd = 2)
calificacion <- 50 + 10 * horas_estudio + rnorm(n, mean = 0, sd = 5)
datos <- data.frame(horas_estudio, calificacion)
datos

# Ajuste del modelo de regresión lineal simple
modelo <- lm(calificacion ~ horas_estudio, data = datos)

# Resumen del modelo
summary(modelo)

# Número de parámetros
k <- 2

# Grados de libertad
df <- n - k

# Nivel de significancia
alpha <- 0.05

# Valor crítico de t para un nivel de confianza del 95%
t_critico <- qt(1 - alpha/2, df)

# Mostrar el valor crítico
t_critico

