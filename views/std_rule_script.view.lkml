view: std_rule_script {
  sql_table_name: hmc_log.std_rule_script ;;

  dimension: ctgr {
    type: string
    sql: ${TABLE}.ctgr ;;
  }

  dimension: dtl {
    type: string
    sql: ${TABLE}.dtl ;;
  }

  dimension: main_id {
    type: string
    sql: ${TABLE}.main_id ;;
  }

  dimension: sub_id {
    type: number
    sql: ${TABLE}.sub_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
