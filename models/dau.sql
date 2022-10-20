SELECT
  *
FROM
  {{ metrics.calculate(metric('unique_user'), grain='month') }}
