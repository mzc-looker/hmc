view: task_4_2_ccs_user {
  sql_table_name: hmc_log.task_4_2_ccs_user ;;

  dimension: age {
    type: string
    sql: ${TABLE}.age ;;
  }

  dimension: brand_cd {
    type: string
    sql: ${TABLE}.brand_cd ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: mdl_cd {
    type: string
    sql: ${TABLE}.mdl_cd ;;
  }

  dimension: mts_cd {
    type: string
    sql: ${TABLE}.mts_cd ;;
  }

  dimension: reg_dt {
    type: string
    sql: ${TABLE}.reg_dt ;;
  }

  dimension: sex {
    type: number
    sql: ${TABLE}.sex ;;
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
