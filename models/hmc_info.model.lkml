connection: "redshift_hmc"

# include all the views
include: "/views/**/*.view"

datagroup: hmc_info_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hmc_info_default_datagroup

explore: calendar {}

explore: ccs_user {}

explore: hmc_std_log {}

explore: hmc_std_log_lati_longi_summary {}

explore: hmc_use_log {}

explore: hmc_use_log_1week {}

explore: hmc_use_log_trip_sum {}

explore: hmc_use_log_trip_sum_new {}

explore: hmc_use_log_trip_vin_summary {}

explore: hmc_use_log_trip_vin_summary_new {}

explore: hmc_use_log_vin_sum {}

explore: hmc_use_log_vin_sum_new {}

explore: kmc_std_log {}

explore: kmc_use_log {}

explore: rule_script {}

explore: std_rule_script {}

explore: task2_1_hmc_kmc_use_log {}

explore: task2_1_hmc_kmc_use_log_1 {}

explore: task_1_1_hmc_kmc_use_log {}

explore: task_1_2_hmc_kmc_use_log {}

explore: task_1_3_hmc_kmc_use_log {}

explore: task_1_hmc_kmc_use_log {}

explore: task_2_2_hmc_kmc_use_log {}

explore: task_2_2_hmc_kmc_use_log_1 {}

explore: task_3_1_hmc_std_log {}

explore: task_3_1_hmc_std_log_1 {}

explore: task_3_2_hmc_std_log {}

explore: task_3_2_hmc_std_log_1 {}

explore: task_3_2_hmc_std_log_2 {}

explore: task_4_1_ccs_user {}

explore: task_4_2_ccs_user {}

explore: task_7_1_hmc_kmc_std_log {}

explore: task_7_1_hmc_kmc_std_log_1 {}

explore: use_rule_script {}

explore: view_task_7_1_hmc_kmc_std_log {}

explore: vw_code_cnt {}

explore: vw_code_max_min_length {}

explore: vw_code_null_cnt {}

explore: vw_date_null_cnt {}

explore: vw_date_timestamp_max_min_length {}

explore: vw_date_var_timestamp_value_cnt {}

explore: vw_date_varchar_max_min_length {}

explore: vw_date_varchar_value_cnt {}

explore: vw_log_meta {}

explore: vw_na_cnt {}

explore: vw_na_max_min_length {}

explore: vw_na_null_cnt {}
