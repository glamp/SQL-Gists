
{{#days}}
select
    name
    , address
    , {{ ith_day }}
from
    foo;
{{/days}}