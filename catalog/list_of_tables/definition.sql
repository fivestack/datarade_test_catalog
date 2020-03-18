select
    s.name as schema_name,
    t.name as table_name,
    count(*) as column_count
from sys.columns c
join sys.tables t
    on t.object_id = c.object_id
join sys.schemas s
    on s.schema_id = t.schema_id
group by
    s.name,
    t.name
