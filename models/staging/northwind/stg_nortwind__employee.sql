with
    employee as (
        select
            cast(ID as integer) as ID,
            cast(LASTNAME as string) as LASTNAME,
            cast(FIRSTNAME as string) as FIRSTNAME,
            cast(TITLE as string) as TITLE,
            cast(TITLEOFCOURTESY as string) as TITLEOFCOURTESY,
            cast(BIRTHDATE as date) as BIRTHDATE,
            cast(HIREDATE as date) as HIREDATE,
            cast(ADDRESS as string) as ADDRESS,
            cast(CITY as string) as CITY,
            cast(REGION as string) as REGION,
            cast(POSTALCODE as string) as POSTALCODE,
            cast(COUNTRY as string) as COUNTRY,
            cast(HOMEPHONE as string) as HOMEPHONE,
            cast(EXTENSION as integer) as EXTENSION,
            cast(PHOTO as string) as PHOTO,
            cast(NOTES as string) as NOTES,
            cast(REPORTSTO as integer) as REPORTSTO,
            cast(PHOTOPATH as string) as PHOTOPATH
            from {{source("northwind", "EMPLOYEE")}}
    )
    select * from employee