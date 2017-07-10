# Smart Meter Research Portal (SMRP)
The aim of this page is to provide a curated list of useful software libraries and resources for analyzing smart meter data (under permanent construction). This list may also be useful for analyzing any regularly-spaced time series data, e.g. half-hourly weather data, monthly unemployment data, etc. 

*Inspired by [awesome-python][awesome-python] and [awesome-R][awesome-R]*.
## Table of Contents
- [Data](#data)
- [Software](#software)
- [Books](#books)
- [Courses](#courses)
- [Journals](#journals)
- [Themes](#themes):
    - [Uncertainty in Smart Meter Data](#smart-meter-uncertainty)    
    - [UK Smart Meter Rollout](#smart-meter-rollout)
  
## Data
The table below lists some existing UK smart meter data sets available for download on the web.

Name | Period | No. of Households | No. of Obs. | Sample Freq. | Data Recorded | Obs. Type | Data Format | Data License | Meter Type 
---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | --- |
[Energy Demand Research Project][EDRP] |  2007-2010 |  14,000 | 400 million | 30  mins | Electricity, Gas | Aggregate | csv | EULA* | SMETS 1*
[Low Carbon London Project][LCL] |  2013-2014 | 5,536  | 100 million | 30 mins | Electricity | Aggregate | csv | Open | SMETS 1
[REFIT Electrical Load Measurements][REFIT] | 2015-2017 | 20 | 1 billion | 8 seconds | Electricity | Aggregate, Appliance | csv |  Open | Custom* 
[UK Domestic Appliance-Level Electricity][UK-DALE] | 2015-2017 | 5 | 1 billion |6-8 seconds | Electricity | Aggregate, Appliance | csv, FLAC | Open | Custom |

\* [EULA] (End User License Agreement): Sign up and register with the [UK Data Service][UKDS] to download.
\* [SMETS 1] (Smart Meter Equipment Technical Standards): UK government standard for smart metering equpiment.

Some other good resources include:
- [Household Power/Appliance Open Access Datasets][Nature Table] 
- [Smart Meter Data and Public Interest Issues - Annex A: Existing Data][Elam Paper] 
## Software
A list of commonly used software libraries and tools for processing and analyzing smart meter data in [`Python`][Py-lang] and [`R`][R-lang], the two dominant programming languages in modern data science. An easy-to-follow tutorial is provided for each entry in the [examples][smrp-examples] directory, as an [R notebook][R-nb] or a [Jupyter notebook][Jupyter-nb] for readability and reproducibility. We follow the [Advanced R Style Guide][hadley-guide] for `R` code and the [PEP-8 Style Guide][PEP-guide] for `Python` code for consistency and maintainability.
- Pre-processing
- Statistical Models
- Machine Learning
- Dashboard

[comment]: # (Web Links)
[awesome-Python]: https://github.com/vinta/awesome-python
[awesome-R]: https://github.com/qinwf/awesome-R
[EDRP]: https://discover.ukdataservice.ac.uk/catalogue/?sn=7591&type=data%20catalogue
[Elam Paper]: https://www.cse.org.uk/downloads/file/teddinet-paper-simon-elam-technical-annex.pdf
[EULA]: https://www.ukdataservice.ac.uk/get-data/how-to-access/conditions
[hadley-guide]: http://adv-r.had.co.nz/Style.html
[Nature Table]: https://www.nature.com/articles/sdata2016122/tables/1?proof=true
[PEP-guide]: https://www.python.org/dev/peps/pep-0008/
[R-nb]: http://rmarkdown.rstudio.com/r_notebooks.html
[Jupyter-nb]: http://jupyter.org/
[Py-lang]: https://docs.python.org/3/
[R-lang]: https://www.r-project.org/about.html
[LCL]: https://data.london.gov.uk/dataset/smartmeter-energy-use-data-in-london-households
[REFIT]: http://dx.doi.org/10.15129/9ab14b0e-19ac-4279-938f-27f643078cec
[SMETS 1]: https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/299395/smets.pdf
[UK-DALE]: https://www.doc.ic.ac.uk/~dk3810/data/
[UKDS]: http://sp.ukdataservice.ac.uk/newRegistration/newLogin.asp

[comment]: # (Repos Links)
[smrp-examples]: ../examples
