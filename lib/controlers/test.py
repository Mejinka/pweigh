import pyautogui
import random
import time

# Determine o tamanho da tela
screenWidth, screenHeight = pyautogui.size()

while True:
    # Escolha coordenadas aleatórias dentro do tamanho da tela
    x = random.randint(0, screenWidth)
    y = random.randint(0, screenHeight)

    # Mova o mouse para a posição escolhida aleatoriamente
    # O último parâmetro é a duração do movimento em segundos, adicionamos um pouco de aleatoriedade a ele também.
    pyautogui.moveTo(x, y, duration=random.uniform(0.5, 1.5))

    # Aguarde 5 segundos
    time.sleep(5)