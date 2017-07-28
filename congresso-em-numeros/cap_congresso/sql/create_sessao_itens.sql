create table c_congresso.sessao_itens
(
	id_item text not null PRIMARY KEY ,
  id_especie_legislativa text not null,
  id_sessao text not null,
  codigo_item bigint not null,
  identificacao text,
  apreciacao_papeleta text,
  ementa_papeleta text,
  cabecalho text,
  indicador_deliberacao bigint,
  descricao_deliberacao text,
  sequencial_item bigint,
  tipo_pauta bigint,
  descricao_tipo_pauta text,
  indicador_revisado text,
  codigo_tipo_apreciacao bigint,
  descricao_tipo_apreciacao text,
  data_captura timestamp,
  url_captura text,
	api_captura text
);