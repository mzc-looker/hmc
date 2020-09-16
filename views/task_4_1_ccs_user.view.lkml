view: task_4_1_ccs_user {
  sql_table_name: hmc_log.task_4_1_ccs_user ;;

  dimension: all {
    type: number
    sql: ${TABLE}."all" ;;
  }

  dimension: count_task_4_1_ccs_user {
    type: number
    sql: ${TABLE}.count ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
