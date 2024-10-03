with
    product as (
        select
            cast(id as integer) as id,
            cast(productname as string) as productname,
            cast(supplierid as integer) as supplierid,
            cast(categoryid as integer) as categoryid,
            cast(quantityperunit as string) as quantityperunit,
            cast(unitprice as integer) as unitprice,
            cast(unitsinstock as integer) as unitsinstock,
            cast(unitsonorder as integer) as unitsonorder,
            cast(reorderlevel as integer) as reorderlevel,
            cast(discontinued as integer) as discontinued
            from {{ source("northwind", "product") }}
    )
    select * from
    product

