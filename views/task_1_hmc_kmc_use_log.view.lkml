view: task_1_hmc_kmc_use_log {
  sql_table_name: hmc_log.task_1_hmc_kmc_use_log ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: total {
    type: number
    sql: ${TABLE}.total ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
