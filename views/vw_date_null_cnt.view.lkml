view: vw_date_null_cnt {
  sql_table_name: hmc_log.vw_date_null_cnt ;;

  dimension: col {
    type: string
    sql: ${TABLE}.col ;;
  }

  dimension: null_cnt {
    type: number
    sql: ${TABLE}.null_cnt ;;
  }

  dimension: null_rate {
    type: number
    sql: ${TABLE}.null_rate ;;
  }

  dimension: tab {
    type: string
    sql: ${TABLE}.tab ;;
  }

  dimension: total_cnt {
    type: number
    sql: ${TABLE}.total_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
