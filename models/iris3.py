def model(dbt, session):
    df = dbt.ref("iris2")

    return df
