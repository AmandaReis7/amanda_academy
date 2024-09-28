with
funcionarios as (
select *
from {{ref('stg_erp__funcionarios')}}
)

, joinned as (
    select
        funcionarios.PK_FUNCIONARIO
        ,funcionarios.FK_GERENTE
        ,funcionarios.NOME_FUNCIONARIO
        ,funcionarios.CARGO_FUNCIONARIO
        ,gerentes.nome_funcionario as nome_gerente
        ,funcionarios.DT_NASCIMENTO_FUNCIONARIO
        ,funcionarios.DT_CONTRATACAO
        ,funcionarios.CIDADE_FUNCIONARIO
        ,funcionarios.REGIAO_FUNCIONARIO
        ,funcionarios.PAIS_FUNCIONARIO
  
    from funcionarios
    left join funcionarios as gerentes
    on funcionarios.fk_gerente = gerentes.pk_funcionario
)
select *
from joinned
