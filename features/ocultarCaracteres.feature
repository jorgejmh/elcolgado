Feature:
	Como jugador
	quiero que se muestre la palabra en pantalla mostrando los caracteres ocultos
	para intentar adivinar la palabra 

Scenario: dado la palabra hola debe existir la palabra oculta con _
	Given que abri el indice
	Then debo ver oculto "____"