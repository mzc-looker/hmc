view: calendar {
  sql_table_name: hmc_log.calendar ;;

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension: yyyy {
    type: string
    sql: ${TABLE}.yyyy ;;
  }

  dimension: yyyymm {
    type: string
    sql: ${TABLE}.yyyymm ;;
  }

  dimension: yyyymmdd {
    type: string
    sql: ${TABLE}.yyyymmdd ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
