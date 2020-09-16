view: vw_na_cnt {
  sql_table_name: hmc_log.vw_na_cnt ;;

  dimension: cnt {
    type: number
    sql: ${TABLE}.cnt ;;
  }

  dimension: col1 {
    type: string
    sql: ${TABLE}.col1 ;;
  }

  dimension: col2 {
    type: string
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
