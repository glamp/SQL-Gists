
--OR--
days = (select distinct created_date as ith_day from sample_days)
days = { 'days': [ {'ith_day': '2013-01-01'}, {'ith_day': '2013-06-01'}, {'ith_day': '2013-12-01'} ]}
{{#days}}
select
    name
    , address
    , '{{ ith_day }}' as day_n
from
    foo;
{{/days}}

stuffs = (select distinct name as human_name, created_date as ith_day from users)

{{#stuffs}}
select
    {{ human_name }}
    , {{ ith_day }}
    , address
from
    foo;
{{/stuffs}}