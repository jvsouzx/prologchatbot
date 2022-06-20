info('covid','prevenção','Uso de máscara').
info('covid','prevenção','Lavar constantemente as mãos').
info('covid','prevenção','Distanciamento de no mín 2m').
info('covid','prevenção','Vacinação').
info('covid','tratamento', '...').

start:-  	
    	write('Bem vindo!!'), nl,
    	repeat, nl,
    	write('Sobre qual doença você gostaria de se informar hoje ?'), nl,
    	read(Doenca), nl,
    	write(Doenca), nl,
    	write('Sobre a '), write(Doenca), write(', o que deseja saber?'), nl,
    	read(Info), nl,
    	consulta(Doenca, Info, Res), nl,
    	write(Res), 
    	final(Doenca).

consulta(Doenca, Info, Res):- info(Doenca, Info, Res).

final(Doenca):- Doenca = ('fim').