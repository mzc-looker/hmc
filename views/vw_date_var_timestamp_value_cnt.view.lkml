view: vw_date_var_timestamp_value_cnt {
  sql_table_name: hmc_log.vw_date_var_timestamp_value_cnt ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: col1 {
    type: string
    sql: ${TABLE}.col1 ;;
  }

  dimension_group: col2 {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.col2 ;;
  }

  dimension: tab {
    type: string
    sql: ${TABLE}.tab ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
