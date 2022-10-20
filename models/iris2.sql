select
  Sepal_Length as sepal_length,
  Sepal_Width as sepal_width,
  Petal_Length as petal_length,
  Petal_Width as petal_width,
  Species as species,
from
  {{ source('r_dataset', 'iris') }}