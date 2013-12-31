
{{#days}}
select
    name
    , address
    , {{ ith_day }} as day_n
from
    foo;
{{/days}}