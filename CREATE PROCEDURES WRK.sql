CREATE PROCEDURES WRK


CREATE PROCEDURE sp_ins_wrk_linha
AS
insert into WRK.BFS_DIM_LINHA
select
	NCOD as 'LIN_CO_CODIGO', 
	NLINHA as 'LIN_DS_LINHA',
	NUSER as 'LIN_DS_USUARIO',
	cast(trim(NCONTROL) as float) as 'LIN_NU_CONTROLE',
	cast(trim(NCLUCRO) as bigint) as 'LIN_CO_LUCRO',
	NSIGLA as 'LIN_DS_SIGLA',
	BLINHA as 'LIN_DS_BLINHA',
	cast(replace(convert(varchar(10), GETDATE(), 120), '-', '') as int) as 'LIN_DT_PROCESSAMENTO'
from STG.GAN_TMPLINHA 
GO



CREATE PROCEDURE sp_ins_wrk_fabricante
AS
insert into WRK.BFS_DIM_FABRICANTE
select
	FCOD as 'FAB_CO_CODIGO', 
	FNOM as 'FAB_DS_NOME',
	FUSER as 'FAB_DS_USUARIO',
	cast(trim(FBLOQ) as bigint) as 'FAB_ST_BLOQUEIO',
	FCODH as 'FAB_CO_CODIGOH',
	MFAB as 'FAB_CO_MFAB',
	cast(replace(convert(varchar(10), GETDATE(), 120), '-', '') as int) as 'FAB_DT_PROCESSAMENTO'
from STG.GAN_TMPFAB
GO



CREATE PROCEDURE sp_ ins_wrk_cliente
AS
insert into WRK.BFS_DIM_CLIENTE
select
	RCOD  as 'CLI_CO_CODIGO', 
	RNOM  as 'CLI_DS_NOME', 
	RNOM_C  as 'CLI_DS_PRIMEIRO_NOME', 
	RENDER  as 'CLI_DS_ENDERECO_1', 
	RBAIR  as 'CLI_DS_BAIRRO_1', 
	cast(trim(RCID) as int) as 'CLI_CO_CIDADE_1', 
	RCEP  as 'CLI_DS_CEP_1', 
	RTLOGR  as 'CLI_TP_TIPO_LOGRADOURO_1', 
	RLOGR  as 'CLI_DS_LOGRADOURO_1', 
	cast(trim(RNUMERO) as int) as 'CLI_NU_NUMERO_1', 
	RCOMPLEM  as 'CLI_DS_COMPLEMENTO_END_1', 
	RORIG  as 'CLI_DS_ORIGEM', 
	RCONTAC  as 'CLI_DS_CONTAC', 
	RTEL  as 'CLI_DS_TELEFONE', 
	RFAX  as 'CLI_DS_FAX', 
	RENDCB  as 'CLI_DS_ENDERECO_2', 
	RBAIRCB  as 'CLI_DS_BAIRRO_2', 
	cast(trim(RCIDCB) as int) as 'CLI_CO_CIDADE_2', 
	RCEPCB  as 'CLI_DS_CEP_2', 
	RTLOGRCB  as 'CLI_TP_TIPO_LOGRADOURO_2', 
	RLOGRCB  as 'CLI_DS_LOGRADOURO_2', 
	cast(trim(RNUMEROCB) as int) as 'CLI_NU_NUMERO_2', 
	RCOMPLEMCB  as 'CLI_DS_COMPLEMENTO_END_2', 
	RENDET  as 'CLI_DS_ENDERECO_3', 
	RBAIRET  as 'CLI_DS_BAIRRO_3', 
	cast(trim(RCIDET) as int)  as 'CLI_CO_CIDADE_3', 
	RCEPET  as 'CLI_DS_CEP_3', 
	RTLOGRET  as 'CLI_TP_TIPO_LOGRADOURO_3', 
	RLOGRET  as 'CLI_DS_LOGRADOURO_3', 
	cast(trim(RNUMEROET) as int)  as 'CLI_NU_NUMERO_3', 
	RCOMPLEMET  as 'CLI_DS_COMPLEMENTO_END_3', 
	cast(trim(RCREDUS) as int) as 'CLI_NU_CREDITO', 
	cast(trim(RLIMCRED) as int) as 'CLI_NU_LIMITE_CREDITO', 
	RBLOQ  as 'CLI_DS_BLOQUEIO', 
	RUSER  as 'CLI_DS_USUARIO', 
	RPESSOA  as 'CLI_DS_PESSOA', 
	RCGC  as 'CLI_DS_CGC', 
	RINSC  as 'CLI_DS_INSCRICAO', 
	cast(trim(RDTGER) as int) as 'CLI_NU_DATA_GERACAO', 
	RVEND  as 'CLI_DS_VENDA', 
	RBLOQ_PG  as 'CLI_DS_BLOQUEIO_PAGAMENTO', 
	RPREF  as 'CLI_DS_PREFERENCIA', 
	cast(trim(RDTNASC) as int) as 'CLI_NU_DATA_NASCIMENTO', 
	RSEX  as 'CLI_DS_SEXO', 
	RRGOE  as 'CLI_DS_RG_ORGAO_EMISSOR', 
	RNASC  as 'CLI_ST_NACIONALIDADE', 
	RECIVIL  as 'CLI_DS_ESTADO_CIVIL', 
	RSITE  as 'CLI_ST_SITE', 
	RME  as 'CLI_ST_RME', 
	RNEEDEXPOR  as 'CLI_ST_RNEEDEXPOR', 
	RAJUSTE  as 'CLI_ST_AJUSTE', 
	cast(trim(RLASTUPD) as int) as 'CLI_DT_ULTIMA_ATUALIZACAO', 
	RBLOQM  as 'CLI_ST_BLOQUEIO_M', 
	cast(trim(REAN) as int) as 'CLI_NU_REAN', 
	cast(trim(RDTCAD) as int) as  'CLI_DT_CADASTRO', 
	RUSERCAD  as 'CLI_DS_USUARIO_CADASTRO', 
	RSTATUS  as 'CLI_ST_STATUS', 
	cast(trim(RDTSTATUS) as int) as 'CLI_NU_DATA_STATUS', 
	RUSERSTAT  as 'CLI_DS_USUARIO_STATUS', 
	RCEL  as 'CLI_DS_CELULAR', 
	RTIPIMOVEL  as 'CLI_TP_TIPO_IMOVEL', 
	cast(trim(RDTAPRV) as int) as 'CLI_DT_APROVACAO', 
	RMONITORA  as 'CLI_ST_MONITORA', 
	cast(trim(RDTCONS) as int) as 'CLI_DT_CONSULTA', 
	RSTSIE_STG  as 'CLI_ST_STATUS_STG', 
	RSUFRAMA  as 'CLI_DS_SUFRAMA', 
	RSITSUFR  as 'CLI_ST_SITUACAO_SUFRAMA', 
	cast(trim(RCNAE) as int) as 'CLI_NU_RCNAE', 
	RSIT_RF  as 'CLI_ST_SITUACAORF', 
	cast(trim(RDTS_RF) as int) as 'CLI_DT_SITUACAORF', 
	RSIMPLES  as 'CLI_ST_SIMPLES', 
	RSITRFDESC  as 'CLI_DS_SITUACAO_RF_DESCONTO', 
	ATIV_ECOM  as 'CLI_DS_ATIVIDADE_ECONOMICA', 
	SEMIT_NFE  as 'CLI_ST_SEMITNFE', 
	RARQFL  as 'CLI_ST_RARQFL', 
	RMAE  as 'CLI_DS_NOME_MAE', 
	RSAP  as 'CLI_ST_SAP', 
	RINSCMUN  as 'CLI_DS_INCRICAO_MUNICIPAL', 
	RTIPIMOENT  as 'CLI_TP_RTIPIMOENT', 
	REGESP_CT  as 'CLI_ST_REGESP_SP', 
	cast(replace(convert(varchar(10), GETDATE(), 120), '-', '') as int) as 'CLI_DT_PROCESSAMENTO'
from STG.GAN_SCADGER
GO



CREATE PROCEDURE sp_ins_wrk_vendedor
AS
insert into WRK.BFS_DIM_VENDENDOR
select
	RCOD as 'CLI_CO_CODIGO', 
	RNOM as 'CLI_DS_NOME', 
	RNOM_C as 'CLI_DS_PRIMEIRO_NOME', 
	RENDER as 'CLI_DS_ENDERECO_1', 
	RBAIR as 'CLI_DS_BAIRRO_1', 
	cast(trim(RCID) as int) as 'CLI_CO_CIDADE_1', 
	RCEP as 'CLI_DS_CEP_1', 
	RTLOGR as 'CLI_TP_TIPO_LOGRADOURO_1', 
	RLOGR as 'CLI_DS_LOGRADOURO_1', 
	cast(trim(RNUMERO) as int) as 'CLI_NU_NUMERO_1', 
	RCOMPLEM as 'CLI_DS_COMPLEMENTO_END_1', 
	RORIG as 'CLI_DS_ORIGEM', 
	RCONTAC as 'CLI_DS_CONTAC', 
	RTEL as 'CLI_DS_TELEFONE', 
	RFAX as 'CLI_DS_FAX', 
	RENDCB as 'CLI_DS_ENDERECO_2', 
	RBAIRCB as 'CLI_DS_BAIRRO_2', 
	cast(trim(RCIDCB) as int) as 'CLI_CO_CIDADE_2', 
	RCEPCB as 'CLI_DS_CEP_2', 
	RTLOGRCB as 'CLI_TP_TIPO_LOGRADOURO_2', 
	RLOGRCB as 'CLI_DS_LOGRADOURO_2', 
	cast(trim(RNUMEROCB) as int) as 'CLI_NU_NUMERO_2', 
	RCOMPLEMCB as 'CLI_DS_COMPLEMENTO_END_2', 
	RENDET as 'CLI_DS_ENDERECO_3', 
	RBAIRET as 'CLI_DS_BAIRRO_3', 
	cast(trim(RCIDET) as int)  as 'CLI_CO_CIDADE_3', 
	RCEPET as 'CLI_DS_CEP_3', 
	RTLOGRET as 'CLI_TP_TIPO_LOGRADOURO_3', 
	RLOGRET as 'CLI_DS_LOGRADOURO_3', 
	cast(trim(RNUMEROET) as int)  as 'CLI_NU_NUMERO_3', 
	RCOMPLEMET as 'CLI_DS_COMPLEMENTO_END_3', 
	cast(trim(RCREDUS) as int) as 'CLI_NU_CREDITO', 
	cast(trim(RLIMCRED) as int) as 'CLI_NU_LIMITE_CREDITO', 
	RBLOQ as 'CLI_DS_BLOQUEIO', 
	RUSER as 'CLI_DS_USUARIO', 
	RPESSOA as 'CLI_DS_PESSOA', 
	RCGC as 'CLI_DS_CGC', 
	RINSC as 'CLI_DS_INSCRICAO', 
	cast(trim(RDTGER) as int) as 'CLI_NU_DATA_GERACAO', 
	RVEND as 'CLI_DS_VENDA', 
	RBLOQ_PG as 'CLI_DS_BLOQUEIO_PAGAMENTO', 
	RPREF as 'CLI_DS_PREFERENCIA', 
	cast(trim(RDTNASC) as int) as 'CLI_NU_DATA_NASCIMENTO', 
	RSEX as 'CLI_DS_SEXO', 
	RRGOE as 'CLI_DS_RG_ORGAO_EMISSOR', 
	RNASC as 'CLI_ST_NACIONALIDADE', 
	RECIVIL as 'CLI_DS_ESTADO_CIVIL', 
	RSITE as 'CLI_ST_SITE', 
	RME  as 'CLI_ST_RME', 
	RNEEDEXPOR as 'CLI_ST_RNEEDEXPOR', 
	RAJUSTE as 'CLI_ST_AJUSTE', 
	cast(trim(RLASTUPD) as int) as 'CLI_DT_ULTIMA_ATUALIZACAO', 
	RBLOQM as 'CLI_ST_BLOQUEIO_M', 
	cast(trim(REAN) as int) as 'CLI_NU_REAN', 
	cast(trim(RDTCAD) as int) as  'CLI_DT_CADASTRO', 
	RUSERCAD as 'CLI_DS_USUARIO_CADASTRO', 
	RSTATUS as 'CLI_ST_STATUS', 
	cast(trim(RDTSTATUS) as int) as 'CLI_NU_DATA_STATUS', 
	RUSERSTAT as 'CLI_DS_USUARIO_STATUS', 
	RCEL as 'CLI_DS_CELULAR', 
	RTIPIMOVEL as 'CLI_TP_TIPO_IMOVEL', 
	cast(trim(RDTAPRV) as int) as 'CLI_DT_APROVACAO', 
	RMONITORA as 'CLI_ST_MONITORA', 
	cast(trim(RDTCONS) as int) as 'CLI_DT_CONSULTA', 
	RSTSIE_STG as 'CLI_ST_STATUS_STG', 
	RSUFRAMA as 'CLI_DS_SUFRAMA', 
	RSITSUFR as 'CLI_ST_SITUACAO_SUFRAMA', 
	cast(trim(RCNAE) as int) as 'CLI_NU_RCNAE', 
	RSIT_RF as 'CLI_ST_SITUACAORF', 
	cast(trim(RDTS_RF) as int) as 'CLI_DT_SITUACAORF', 
	RSIMPLES as 'CLI_ST_SIMPLES', 
	RSITRFDESC as 'CLI_DS_SITUACAO_RF_DESCONTO', 
	ATIV_ECOM as 'CLI_DS_ATIVIDADE_ECONOMICA', 
	SEMIT_NFE as 'CLI_ST_SEMITNFE', 
	RARQFL as 'CLI_ST_RARQFL', 
	RMAE as 'CLI_DS_NOME_MAE', 
	RSAP as 'CLI_ST_SAP', 
	RINSCMUN as 'CLI_DS_INCRICAO_MUNICIPAL', 
	RTIPIMOENT as 'CLI_TP_RTIPIMOENT', 
	REGESP_CT as 'CLI_ST_REGESP_SP' 
	cast(replace(convert(varchar(10), GETDATE(), 120), '-', '') as int) as 'CLI_DT_PROCESSAMENTO'
from STG.GAN_SCADGER
GO
















