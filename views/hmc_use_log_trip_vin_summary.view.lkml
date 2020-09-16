view: hmc_use_log_trip_vin_summary {
  sql_table_name: hmc_log.hmc_use_log_trip_vin_summary ;;

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: trip_sum {
    type: number
    sql: ${TABLE}.trip_sum ;;
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
