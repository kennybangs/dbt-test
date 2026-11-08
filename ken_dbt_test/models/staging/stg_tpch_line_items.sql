SELECT {{
    dbt_utils.generate_surrogate_key(
        ['L_ORDERKEY', 'L_LINENUMBER'],
    )
}} as order_item_key
    ,L_ORDERKEY AS ORDER_KEY
    ,L_PARTKEY AS PART_KEY
    ,L_LINENUMBER AS LINE_NUMBER
    ,L_QUANTITY AS QUANTITY
    ,L_EXTENDEDPRICE AS EXTENDED_PRICE
    ,L_DISCOUNT AS DISCOUNT
    ,L_TAX AS TAX
FROM {{ source('tpch', 'lineitem') }}