info('covid','prevencao','Para prevenir a COVID é recomendado: Uso de máscara,  
                          Lavar constantemente as mãos, 
                          Manter uma distância segura de outras pessoas, 
                          Vacinação.').

info('covid','sintomas','Sintomas mais comuns: Febre, tosse, cansaço, perda do paladar ou oufato.
                         Sintomas menos comuns: Dores de garganta, dor de cabeça, dores e desconfortos, diarreia, irritações na pele, olhos vermelhos ou irritados.
                         Sintomas graves: Dificuldade para respirar, perda da fala, dores no peito.').

info('covid','tratamento','Cientistas do mundo todo estão trabalhando para encontrar e desenvolver tratamentos para a COVID-19.
                           Os tratamentos paliativos mais indicados incluem oxigênio, para casos mais graves e pacientes de alto risco devido a outras doenças, e suportes respiratórios, como ventilação, para pacientes em estado crítico.
                           A Dexametasona é um corticosteroide que pode ajudar a reduzir o tempo de ventilação e salvar as vidas de pacientes em situação mais grave.
                           A OMS não recomenda a automedicação, incluindo ingestão de antibióticos, como prevenção ou cura da COVID-19.').

sim('sim').
nao('nao').

start:-  	
    	write('Bem vindo!! Aqui você encontrará diversas informações sobre doenças de diversos tipos!!'), nl,
		repeat, nl,
    	write('Olá, estou aqui para te ajudar! Sobre qual doença gostaria de se informar?'), nl,
		read(Doenca), nl,
    	write('Sobre a '), write(Doenca), write(', o que deseja saber?'), nl,
    	read(Info), nl,
    	consulta(Doenca, Info, Res), nl,
    	write(Res), nl,
    	write('Deseja saber algo a mais sobre a '), write(Doenca), write('?'), nl,
    	read(X), nl,
    	resposta(X, Doenca, R),
    	write(R), nl,
    	final(Doenca).


consulta(Doenca, Info, Res):- info(Doenca, Info, Res), !.

final(Doenca):- Doenca = ('fim').

resposta(X, Doenca, R):- 
    		(sim(X) -> 
    		write('Sobre a '), write(Doenca), write(', o que deseja saber?'), nl,
    		read(Info),
    		consulta(Doenca, Info, R); nao(X) -> final(Doenca)).