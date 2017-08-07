## Load in the utility script.
source("https://raw.githubusercontent.com/ukdataservice/SMRP/master/scripts/utils.R")

## Read in required packages.
pkgs = c("readr", "feather")
check_pkgs(pkgs)

## Download sample LCL data.
url = paste0("https://files.datapress.com/london/dataset/",
             "smartmeter-energy-use-data-in-london-households/",
             "UKPN-LCL-smartmeter-sample.csv")
col_names = c("id", "time_of_use", "datetime", "kwh_hh", "acorn", "acorn_group")
col_types = cols(id = col_character(),
                 time_of_use = col_character(),
                 datetime = col_datetime("%d/%m/%Y %H:%M:%S"),
                 kwh_hh = col_double(),
                 acorn = col_character(),
                 acorn_group = col_character())                                 
lcl = read_csv(url, col_names = col_names, col_types = col_types, skip = 1)

## Write the "lcl" data frame as a feather file.
file_path = "~/Desktop/lcl.feather"
write_feather(lcl, file_path)

## Read in feather file and have a look.
df = read_feather(file_path)
df
