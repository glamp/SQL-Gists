days = { 'days': ['2013-01-01', '2013-06-01', '2013-12-01'] }
days = (select distinct created_date as ith_day from sample_days)
--OR--

{{#days}}
select
    name
    , address
    , {{ . }} as day_n
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