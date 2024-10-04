with
    customer as (
        select
         cast(ID as string) as ID,
         cast(COMPANYNAME as string) as COMPANYNAME,
         cast(CONTACTNAME as string) as CONTACTNAME,
         cast(CONTACTTITLE as string) as CONTACTTITLE,
         cast(ADDRESS as string) as ADDRESS,
         cast(CITY as string) as CITY,
         cast(REGION as string) as REGION,
         cast(POSTALCODE as string) as POSTALCODE,
         cast(COUNTRY as string) as COUNTRY,
         cast(PHONE as string) as PHONE,
         cast(FAX as string) as FAX

        from {{source ("northwind", "CUSTOMER")}}

    )
    select * from customer