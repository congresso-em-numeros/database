create table c_congresso.votacoes
(
	id_votacao text not null PRIMARY KEY ,
	api_captura text NOT NULL ,
	codigo_sessao_votacao int NOT NULL ,
	indicador_votacao_secreta text,
	descricao_votacao text,
	resultado text,
	data_captura timestamp,
	url_captura text
);