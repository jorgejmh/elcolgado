Feature:
	Como jugador
	quiero que se muestre la palabra en pantalla mostrando los caracteres ocultos
	para intentar adivinar la palabra

Scenario: debe existir una palabra oculta con _
	Given que abri el juego
	Then debo ver "_" 

Scenario: dado la palabra hola debe existir la palabra oculta con _
	Given que abri el juego	
	Then debo ver "_ _ _ _" 