
## Data
All the data are provided in [`feather`][Feather] format for speed and
seamless interoperability between [`R`][R-lang] and other programming
languages (e.g.  [`Python`][Py-lang]). [`feather`][Feather] is a binary
file format for storing *data frames*, a.k.a. *spreadsheets*.
[`feather`][Feather] is language-agnostic, i.e. [`feather`][Feather] files
are the same whether implemented in [`R`][R-lang] or another language like
[`Python`][Py-lang]. A simple [`R`][R-lang] for producing the
[`feather`][Feather] file is also included with each data set.

Here's some code to install and use the [`feather`][Feather] package in [`R`][R-lang]: 
```{r}
## Load the "feather" package using the utility script provided in /scripts.
source("https://raw.githubusercontent.com/ukdataservice/SMRP/master/scripts/utils.R")
check_pkgs("feather")

## Inspect the "women" data frame.
women

## Write the "women" data frame as a feather file.
file_path = "~/Desktop/women.feather"
write_feather(women, file_path)

## Read in the feather file and check that it is identical to "women".
df = read_feather(file_path)

## Inspect the "df" data frame.
df
```

<!-- References -->
[Py-lang]: https://docs.python.org/3/
[R-lang]: https://www.r-project.org/about.html
[Feather]: https://github.com/wesm/feather
