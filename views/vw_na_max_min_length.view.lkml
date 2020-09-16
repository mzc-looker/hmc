view: vw_na_max_min_length {
  sql_table_name: hmc_log.vw_na_max_min_length ;;

  dimension: col {
    type: string
    sql: ${TABLE}.col ;;
  }

  dimension: max {
    type: number
    sql: ${TABLE}.max ;;
  }

  dimension: min {
    type: number
    sql: ${TABLE}.min ;;
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
