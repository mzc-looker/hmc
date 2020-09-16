view: task_2_2_hmc_kmc_use_log {
  sql_table_name: hmc_log.task_2_2_hmc_kmc_use_log ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension_group: ignitiontime {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ignitiontime ;;
  }

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: trip_cnt {
    type: number
    sql: ${TABLE}.trip_cnt ;;
  }

  dimension: trip_use_log_cnt {
    type: number
    sql: ${TABLE}.trip_use_log_cnt ;;
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
