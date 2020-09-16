view: task_7_1_hmc_kmc_std_log {
  sql_table_name: hmc_log.task_7_1_hmc_kmc_std_log ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: data_value {
    type: string
    sql: ${TABLE}.data_value ;;
  }

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
  }

  dimension: vin_cnt {
    type: number
    sql: ${TABLE}.vin_cnt ;;
  }

  dimension: vin_std_log_cnt {
    type: number
    sql: ${TABLE}.vin_std_log_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
