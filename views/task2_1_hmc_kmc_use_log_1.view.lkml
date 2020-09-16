view: task2_1_hmc_kmc_use_log_1 {
  sql_table_name: hmc_log.task2_1_hmc_kmc_use_log_1 ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
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

  dimension: vin_use_log_cnt {
    type: number
    sql: ${TABLE}.vin_use_log_cnt ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
