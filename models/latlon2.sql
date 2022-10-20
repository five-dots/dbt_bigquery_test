SELECT
  date_time,
  adid,
  latitude,
  longitude,
FROM
  {{ source('r_dataset', 'latlon') }}
UNION ALL
SELECT
  DATETIME_ADD(date_time, INTERVAL 1 DAY) AS date_time,
  adid,
  latitude,
  longitude,
FROM
  {{ source('r_dataset', 'latlon') }}
