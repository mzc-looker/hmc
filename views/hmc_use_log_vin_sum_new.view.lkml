view: hmc_use_log_vin_sum_new {
  sql_table_name: hmc_log.hmc_use_log_vin_sum_new ;;

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: vin_sum {
    type: number
    sql: ${TABLE}.vin_sum ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
