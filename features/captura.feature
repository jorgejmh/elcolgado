Feature:
	Como jugador
	quiero capturar una letra de la palabra
	para tratar de adivinarla

Scenario: trato de adivinar una letra
	Given que abri el juego
	And ingreso la letra "A"
	Then debo ver "Caracteres usados: A"

Scenario: trato de adivinar una letra
	Given que abri el juego
	And ingreso la letra "A"
	And ingreso la letra "B"
	Then debo ver "Caracteres usados: A,B"