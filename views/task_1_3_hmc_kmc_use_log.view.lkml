view: task_1_3_hmc_kmc_use_log {
  sql_table_name: hmc_log.task_1_3_hmc_kmc_use_log ;;

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

  dimension: prj_vehl_cd {
    type: string
    sql: ${TABLE}.prj_vehl_cd ;;
  }

  dimension: trip_cnt {
    type: number
    sql: ${TABLE}.trip_cnt ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
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
