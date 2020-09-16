view: hmc_use_log_1week {
  sql_table_name: hmc_log.hmc_use_log_1week ;;

  dimension_group: acc_off {
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
    sql: ${TABLE}.acc_off_time ;;
  }

  dimension_group: acc_on {
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
    sql: ${TABLE}.acc_on_time ;;
  }

  dimension: cause_uipv2 {
    type: string
    sql: ${TABLE}.cause_uipv2 ;;
  }

  dimension: cause_vd {
    type: string
    sql: ${TABLE}.cause_vd ;;
  }

  dimension: container_name {
    type: string
    sql: ${TABLE}.container_name ;;
  }

  dimension: corp {
    type: string
    sql: ${TABLE}.corp ;;
  }

  dimension: data_value {
    type: string
    sql: ${TABLE}.data_value ;;
  }

  dimension: file_name {
    type: string
    sql: ${TABLE}.file_name ;;
  }

  dimension: fuel {
    type: string
    sql: ${TABLE}.fuel ;;
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

  dimension: mdy {
    type: string
    sql: ${TABLE}.mdy ;;
  }

  dimension_group: modified {
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
    sql: ${TABLE}.modified ;;
  }

  dimension: object_name {
    type: string
    sql: ${TABLE}.object_name ;;
  }

  dimension: partition_0 {
    type: string
    sql: ${TABLE}.partition_0 ;;
  }

  dimension: prj_vehl_cd {
    type: string
    sql: ${TABLE}.prj_vehl_cd ;;
  }

  dimension: specname {
    type: string
    sql: ${TABLE}.specname ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  dimension: vin {
    type: string
    sql: ${TABLE}.vin ;;
  }

  dimension: vin_org {
    type: string
    sql: ${TABLE}.vin_org ;;
  }

  measure: count {
    type: count
    drill_fields: [container_name, object_name, file_name, specname]
  }
}