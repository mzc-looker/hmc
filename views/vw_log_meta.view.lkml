view: vw_log_meta {
  sql_table_name: hmc_log.vw_log_meta ;;

  dimension: change_yn {
    type: string
    sql: ${TABLE}.change_yn ;;
  }

  dimension: col_desc {
    type: string
    sql: ${TABLE}.col_desc ;;
  }

  dimension: column_name {
    type: string
    sql: ${TABLE}.column_name ;;
  }

  dimension: column_num {
    type: number
    sql: ${TABLE}.column_num ;;
  }

  dimension: data_type {
    type: string
    sql: ${TABLE}.data_type ;;
  }

  dimension: dbms_type {
    type: string
    sql: ${TABLE}.dbms_type ;;
  }

  dimension: dist_key {
    type: string
    sql: ${TABLE}.dist_key ;;
  }

  dimension: encoding {
    type: string
    sql: ${TABLE}.encoding ;;
  }

  dimension_group: load_master_dt {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.load_master_dt ;;
  }

  dimension: notnull_flag {
    type: string
    sql: ${TABLE}.notnull_flag ;;
  }

  dimension: obj_type {
    type: string
    sql: ${TABLE}.obj_type ;;
  }

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: sort_key {
    type: string
    sql: ${TABLE}.sort_key ;;
  }

  dimension: t_oid {
    type: string
    sql: ${TABLE}.t_oid ;;
  }

  dimension: tab_desc {
    type: string
    sql: ${TABLE}.tab_desc ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [schema_name, table_name, column_name]
  }
}
