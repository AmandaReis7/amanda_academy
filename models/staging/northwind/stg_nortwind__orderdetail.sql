with
    orderdetail as (
        select
            cast(ORDERID as integer) as ORDERID,
            cast(PRODUCTID as integer) as PRODUCTID,
            cast(UNITPRICE as float) as UNITPRICE,
            cast(QUANTITY as integer) as QUANTITY,
            cast(DISCOUNT as float) as DISCOUNT
            from {{source ("northwind", "ORDERDETAIL")}}

    )
    select * from orderdetail