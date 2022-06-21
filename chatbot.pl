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

info('dengue','prevencao' , 'A melhor forma de prevenção da dengue é evitar a proliferação do mosquito Aedes Aegypti,
                            eliminando água armazenada que podem se tornar possíveis criadouros.
                            Utilize repelente. Cubra a maior parte do corpo com roupas claras quando possível. 
                            Coloque telas em janelas e portas. O mosquito possui hábitos diurnos,
                            sobretudo ao amanhecer e ao entardecer.').

info('dengue','sintomas','Os sintomas são febre alta, erupções cutâneas e dores musculares e articulares. 
                          Em casos graves, há hemorragia intensa e choque hemorrágico (quando uma pessoa perde mais de 20% do sangue ou fluido corporal), o que pode ser fatal.').

info('dengue','tratamento','O tratamento é feito por meio do uso de fluidos e de medicamentos para a dor.
							O tratamento inclui ingestão de líquidos e analgésicos. Os casos graves exigem cuidados hospitalares.').

info('gripe','prevencao','Evitar mudanças bruscas de temperatura, lavar as mãos com freqência, evitar tocar os olhos a boca e o nariz,
                          ter uma alimentação balanceada e práticar exercícios, são medidas que evitam a gripe comum.').

info('gripe','sintomas','Os sintomas incluem febre, calafrios, dores musculares, tosse, congestão, coriza, dores de cabeça e fadiga.').

info('gripe','tratamento','A gripe é tratada principalmente com repouso e ingestão de líquidos para permitir que o corpo combata a infecção por conta própria.
                           Analgésicos anti-inflamatórios vendidos sem prescrição médica podem ajudar com os sintomas.
                           Uma vacina anual pode ajudar a prevenir a gripe e limitar suas complicações.').

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
    		consulta(Doenca, Info, R); nao(X) -> write('Até uma próxima pergunta!!'), nl, final(Doenca)).