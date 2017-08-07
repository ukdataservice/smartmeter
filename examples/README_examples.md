## Examples
All examples/tutorials are provided as an [R notebook][R-nb], which is a kind of interactive 
document that combines computer code, descriptions, and visualizations all in one page. This 
makes it easy to develop, share, and reproduce code. You can either open these in [R Studio]
or in a text editor of your choice, and save it as a `.html` or `.pdf` file. 

For those of you planning on using a text editor to open/run the [R notebooks][R-nb]:
```{r}
## Save your .Rmd file (R Notebook) in a directory of your choice. Then run the following:
source("https://raw.githubusercontent.com/ukdataservice/SMRP/master/scripts/utils.R")
check_pkgs("rmarkdown")

## This command will produce either an .html or .pdf file in your current working directory.
## The output format depend on the output format defined in the header of the .Rmd file.
rmarkdown::render("path/to/Rnotebook.Rmd")                 # Edit the path as appropriate.
```

<!-- References -->
[Py-lang]: https://docs.python.org/3/
[R-lang]: https://www.r-project.org/about.html
[Feather]: https://github.com/wesm/feather
[R Studio]: https://www.rstudio.com/products/rstudio/#Desktop
