with
    shipper as (
        select
        cast(ID as integer) as ID,
        cast(COMPANYNAME as string) as COMPANYNAME,
        cast(PHONE as string) as PHONE

        from {{source("northwind", "SHIPPER")}}
    )

    select * from shipper