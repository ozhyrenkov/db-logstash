SELECT
  *
FROM test

WHERE updated_at > :sql_last_value
