view: task_1_1_hmc_kmc_use_log {
  sql_table_name: hmc_log.task_1_1_hmc_kmc_use_log ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: prj_vehl_cd {
    type: string
    sql: ${TABLE}.prj_vehl_cd ;;
  }

  dimension: sum {
    type: number
    sql: ${TABLE}.sum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
