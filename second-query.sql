--Templating!

-- you can use JSON or SQL to create template data
days = { 'days': [ {'ith_day': '2013-01-01'}, {'ith_day': '2013-06-01'}, {'ith_day': '2013-12-01'} ]}
--OR--
days = (select distinct created_date as ith_day from sample_days)
{{#days}}
select
    name
    , address
    , '{{ ith_day }}' as day_n
from
    users
where
    created_date > '{{ ith_day }}'::date;
{{/days}}


-- another example
stuffs = (select distinct name as human_name, created_date as ith_day from users)

{{#stuffs}}
select
    '{{ human_name }}' as human_name
    , '{{ ith_day }}' as ith_day
    , address
from
    users
where
    name = '{{ human_name }}';
{{/stuffs}}