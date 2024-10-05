with
    region as (
        select
        cast(ID as integer) as ID,
        cast(REGIONDESCRIPTION as string) as REGIONDESCRIPTION

        from {{source("northwind","REGION")}}

    )
    select * from region