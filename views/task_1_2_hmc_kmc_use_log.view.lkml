view: task_1_2_hmc_kmc_use_log {
  sql_table_name: hmc_log.task_1_2_hmc_kmc_use_log ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: prj_vehl_cd {
    type: string
    sql: ${TABLE}.prj_vehl_cd ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
  }

  dimension: vin_cnt {
    type: number
    sql: ${TABLE}.vin_cnt ;;
  }

  dimension: vin_use_log_cnt {
    type: number
    sql: ${TABLE}.vin_use_log_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
