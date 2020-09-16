view: hmc_use_log_trip_sum {
  sql_table_name: hmc_log.hmc_use_log_trip_sum ;;

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

  measure: count {
    type: count
    drill_fields: []
  }
}
