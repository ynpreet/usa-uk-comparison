connection: "inhouse_bi"

# include all the views
include: "/views/**/*.view"

datagroup: pre_covid_era_comparison_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: pre_covid_era_comparison_default_datagroup

explore: comparison_covid_era {}
