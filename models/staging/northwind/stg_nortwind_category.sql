with   
    category as (
        select
            cast(id as integer) as id,
            cast(categoryname as string) as categoryname,
            cast(description as string) as description   

        from {{source("northwind", "CATEGORY")}} 

)

select * from category