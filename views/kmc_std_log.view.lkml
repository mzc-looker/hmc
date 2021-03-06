view: kmc_std_log {
  sql_table_name: hmc_log.kmc_std_log ;;

  dimension: cause {
    type: string
    sql: ${TABLE}.cause ;;
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

  dimension: event_t {
    type: number
    sql: ${TABLE}.event_t ;;
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

  dimension_group: t {
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
    sql: ${TABLE}.t ;;
  }

  dimension: trip_match_key {
    type: string
    sql: ${TABLE}.trip_match_key ;;
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
