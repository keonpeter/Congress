## code to prepare `DATASET` dataset goes here

DATASET <- readr::read_csv("allCongressDataPublishV2.csv") %>%
  janitor::clean_names() %>%
  select(last_name, first_name,  state_dist, number_terms,
         age, party, pass_prcnt, prcnt_ba, prcnt_hs, prcnt_white_all)

usethis::use_data(DATASET, overwrite = TRUE)
