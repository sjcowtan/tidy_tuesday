load_tidytuesday <- function(thedate, setname) {
  tuesday_df <- tidytuesdayR::tt_load(thedate)
  readr::write_csv(tuesday_df[[setname]], paste(thedate, paste0(setname, ".csv"), sep = "/"))
}