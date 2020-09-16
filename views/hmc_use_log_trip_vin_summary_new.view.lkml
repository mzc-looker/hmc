view: hmc_use_log_trip_vin_summary_new {
  sql_table_name: hmc_log.hmc_use_log_trip_vin_summary_new ;;

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: trip_ratio {
    type: number
    sql: ${TABLE}.trip_ratio ;;
  }

  dimension: trip_sum {
    type: number
    sql: ${TABLE}.trip_sum ;;
  }

  dimension: vin_ratio {
    type: number
    sql: ${TABLE}.vin_ratio ;;
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
