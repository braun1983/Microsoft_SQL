create database Teste
ON
( NAME = 'teste_dat',    --nome do arquivo físico
  FILENAME = 'C:\Users\rapha\Documents\GitHub\Microsoft_SQL\teste_dat.mdf', --arquivo do bd
  SIZE= 10MB, --tamanho inicial
  --MAXSIZE = 50mb, --tamanho máximo do arquivo
  FILEGROWTH = 10% --o quanto o arquivo cresce quando chegar ao tamanho máximo pode ser%(do percentual atual) ou mb, gb...
  )

  LOG ON --criar aquivo de log
  ( NAME= Teste_log,
	FILENAME = 'C:\Users\rapha\Documents\GitHub\Microsoft_SQL\teste_log.ldf',
	SIZE = 5mb,
	maxsize = 25mb, -- aqui é interessante manter
	FILEGROWTH= 10%
	)

	COLLATE Latin1_General_CI_AI -- atribui o padrão de caracteres. - CI é case senstive (para não ter diferença ) e AI ( é para acento )
	use teste
	CREATE TABLE curso(
		[idcurso] [int] IDENTITY(1,1) not null,
		[cur_nome] [varchar](70) NULL,
		[cur_varga] [int] NULL,
	CONSTRAINT [PK_Curso] PRIMARY KEY CLUSTERED
	( idcurso ASC)
	)
	go


	