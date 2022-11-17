view: comparison_covid_era {
  sql_table_name: `gcp_poc_datalake.comparison_covid_era`
    ;;

  dimension: country {
      type: string
      sql: ${TABLE}.homepage_url;;
      html: <img src="https://logo-core.clearbit.com/looker.com" /> ;;
    }



  dimension: depression {
    type: number
    sql: ${TABLE}.Depression ;;
  }

  measure: sum_depression{
    type: sum
    sql: ${depression}*100 ;;
    value_format: "0\%"
  }

  dimension: year {
    type: string
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
