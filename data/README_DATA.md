## Data
All data is provided in [`feather`][Feather] format for speed and seamless interoperability between 
[`R`][R-lang] and other programming languages (e.g.  [`Python`][Py-lang]). [`feather`][Feather] is a 
binary file format for storing data frames. It is language-agnostic, i.e. [`feather`][Feather] files 
are the same whether implemented in [`R`][R-lang] or another language like [`Python`][Py-lang].

Here's some code to install and use the [`feather`][Feather] package in [`R`][R-lang]: 
```{r}
## Install the "feather" package. Note that the code will download the
## development (i.e. latest) version of the package if you have "devtools"
## installed on your machine. If not, it will simply download the released
## version from the official R package repository.
if ("devtools" %in% rownames(installed.packages())) {
  devtools::install_github("wesm/feather/R")
} else {
  install.packages("feather")
}

## Load the "feather" package.
library(feather)

## Inspect the "women" data frame.
women

## Write the "women" data frame as a feather file.
file_path = "~/Desktop/women.feather"
write_feather(women, file_path)

## Read in the feather file and check that it is identical to "women".
df = read_feather(file_path)
df

```

<!-- References -->
[Py-lang]: https://docs.python.org/3/
[R-lang]: https://www.r-project.org/about.html
[Feather]: https://github.com/wesm/feather
