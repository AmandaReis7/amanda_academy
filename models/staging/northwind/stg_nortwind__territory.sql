with
    territory as (
        select
        cast(ID as integer) as ID,
        cast(TERRITORYDESCRIPTION as string) as TERRITORYDESCRIPTION,
        cast(REGIONID as integer) as REGIONID

        from {{source("northwind", "TERRITORY")}}

    )
    select * from territory