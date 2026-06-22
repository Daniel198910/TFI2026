import turtle
import math

# Definimos las conexiones usando texto plano para evitar que el filtro las borre
conexiones_texto = [
    "1->2,3",
    "2->3,4",
    "3->4,5",
    "4->5,6",
    "5->6,7",
    "6->7,8",
    "7->8,1",
    "8->1,2"
]

# Procesamos el texto para armar el grafo de forma segura
grafo = {}
for linea in conexiones_texto:
    origen, destinos_str = linea.split("->")
    grafo[int(origen)] = [int(x) for x in destinos_str.split(",")]

# Configuración de la ventana de dibujo
t = turtle.Turtle()
s = turtle.Screen()
s.setup(700, 700)
s.title("Grafo Dirigido de 8 Nodos")
t.speed(0) 
turtle.delay(0)

# Calcular las posiciones en círculo para los 8 nodos
radio = 200
posiciones = {}
for i in range(1, 9):
    angulo = math.radians((i - 1) * (360 / 8))
    x = radio * math.cos(angulo)
    y = radio * math.sin(angulo)
    posiciones[i] = (x, y)

# Dibujar las líneas y flechas de conexión
t.pensize(2)
t.color("#37474F") 
for nodo, vecinos in grafo.items():
    x1, y1 = posiciones[nodo]
    for vecino in vecinos:
        x2, y2 = posiciones[vecino]
        
        dx, dy = x2 - x1, y2 - y1
        distancia = math.sqrt(dx**2 + dy**2)
        ux, uy = dx / distancia, dy / distancia
        
        t.penup()
        t.goto(x1 + ux * 25, y1 + uy * 25) 
        t.pendown()
        t.goto(x2 - ux * 25, y2 - uy * 25) 
        
        t.setheading(t.towards(x2, y2))
        t.stamp()

# Dibujar los círculos de los nodos y sus números
t.pensize(3)
for nodo, (x, y) in posiciones.items():
    t.penup()
    t.goto(x, y - 25)
    t.pendown()
    t.color("#0288D1") 
    t.fillcolor("#E1F5FE") 
    t.begin_fill()
    t.circle(25)
    t.end_fill()
    
    t.penup()
    t.goto(x, y - 10)
    t.color("black")
    t.write(str(nodo), align="center", font=("Arial", 14, "bold"))

t.hideturtle()
print("¡Grafo dibujado con éxito!")
s.mainloop()
