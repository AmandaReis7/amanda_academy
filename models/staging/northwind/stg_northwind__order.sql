with
    orders as (
    select
            cast(id as integer) as id,
            cast(customerid as string) as customerid,
            cast(employeeid as integer) as employeeid,
            cast(orderdate as date) as orderdate,
            cast(requireddate as date) as requireddate,
            cast(shippeddate as date) as shippeddate,
            cast(shipvia as integer) as shipvia,
            cast(freight as float) as freight,
            cast(shipname as string) as shipname,
            cast(shipaddress as string) as shipaddress,
            cast(shipcity as string) as shipcity,
            cast(shipregion as string) as shipregion,
            cast(shippostalcode as string) as shippostalcode,
            cast(shipcountry as string) as shipcountry
        from {{ source("northwind", "_ORDER_") }}
    )

select * from 
orders

