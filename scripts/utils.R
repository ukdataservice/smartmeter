## Utility functions for R

## Install required packages.
check_pkgs = function(pkgs) {
  pkg_check = function(pkg) {
    chooseCRANmirror(ind = 51)                 # UK repository
    pkg_name = paste0("package:", pkg)
    pkg_inst = rownames(installed.packages())
    if (pkg_name %in% search()) {
      return()
    }
    if (!(pkg %in% pkg_inst)) {
      install.packages(pkg, dep = TRUE)
    }
    library(pkg, char = TRUE, quietly = TRUE)
  }
  invisible(sapply(pkgs, pkg_check))
  if (all(paste0("package:", pkgs) %in% search())) {
    message("All packages have been loaded successfully.")
  }
}
