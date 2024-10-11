with
    employeeterritory as (
        select
         cast(ID as string) as ID,
         cast(EMPLOYEEID as integer) as EMPLOYEEID,
         cast(TERRITORYID as integer) as TERRITORYID

        from {{source("northwind", "EMPLOYEETERRITORY")}}

    )
    select * from employeeterritory