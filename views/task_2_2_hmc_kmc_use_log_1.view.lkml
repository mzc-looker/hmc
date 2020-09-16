view: task_2_2_hmc_kmc_use_log_1 {
  sql_table_name: hmc_log.task_2_2_hmc_kmc_use_log_1 ;;

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: ctgr {
    type: string
    sql: ${TABLE}.ctgr ;;
  }

  dimension: dtl {
    type: string
    sql: ${TABLE}.dtl ;;
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

  measure: count_vin {
    type: count
    drill_fields: [vin]
  }

  measure: distinct_count_vin {
    type: count_distinct
    sql: ${vin} ;;
  }

  measure: a1 {
    type: number
    sql: ${distinct_count_vin}/${count_vin} ;;
    value_format: "#.##0.00"
  }

  measure: sum_trip_cnt {
    type: sum
    sql: ${TABLE}.trip_cnt ;;
  }

  measure: sum_trip_use_log_cnt {
    type: sum
    sql: ${TABLE}.trip_use_log_cnt ;;
  }

  measure: a2 {
    type: number
    sql: ${sum_trip_use_log_cnt}/${sum_trip_cnt} ;;
    value_format: "#.##0.00"
  }

}
