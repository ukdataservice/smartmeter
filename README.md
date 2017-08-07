# Smart Meter Research Portal (SMRP)
There are now over 5.8 million smart meters operating across homes and businesses in the UK, and this number is expected to rise to over 50 million by 2020, driven by the [Smart Meter Implementation Programme][smip]. This programme will provide high-resolution electricity and gas consumption data across millions of household across the UK, offering enormous potential for energy research and data-driven policymaking. However, the sheer volume of the data (e.g. > 20GB) means that even basic exploratory analysis is difficult using traditional desktop-driven methods of analysis. The aim of this page is to provide a curated list of useful software libraries and resources for analyzing smart meter data at scale. This list may also be useful for analyzing any regularly-spaced time series data, e.g. half-hourly weather data, monthly unemployment data, etc. 

*Inspired by [awesome-python][awesome-python] and [awesome-R][awesome-R]*.
 
## Data
The table below lists some existing UK smart meter data sets available for download on the web.

Name | Period | No. of Households | No. of Obs. | Sample Freq. | Data Recorded | Obs. Type | Data Format | Data License | Meter Type 
---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | --- |
[Energy Demand Research Project][EDRP] |  2007-2010 |  14,000 | 400 million | 30  mins | Electricity, Gas | Aggregate | csv | [EULA] | [SMETS 1]
[Low Carbon London Project][LCL] |  2013-2014 | 5,536  | 100 million | 30 mins | Electricity | Aggregate | csv | Open | [SMETS 1]
[REFIT Electrical Load Measurements][REFIT] | 2015-2017 | 20 | 1 billion | 8 seconds | Electricity | Aggregate, Appliance | csv |  Open | Own device
[UK Domestic Appliance-Level Electricity][UK-DALE] | 2015-2017 | 5 | 1 billion |6-8 seconds | Electricity | Aggregate, Appliance | csv, FLAC | Open | Own device |

* [EULA] (End User License Agreement): Sign up and register with the [UK Data Service][UKDS] to download.
* [SMETS 1] (Smart Meter Equipment Technical Standards): UK government standard for smart metering equpiment.

Some other good resources include:
- [Household Power/Appliance Open Access Datasets][Nature Table] 
- [Smart Meter Data and Public Interest Issues - Annex A: Existing Data][Elam Paper] 

A number of small samples of smart meter datasets can be found in the `data` directory. 
These have been converted into [`feather`][Feather] format for speed and seamless interoperability 
between [`Python`][Py-lang] and [`R`][R-lang].

## Software
A list of popular [`R`][R-lang] libraries for analyzing smart meter data is provided below. A hands-on tutorial can be found for each library in the [examples][smrp-examples] directory as an [R notebook][R-nb]. This is to ensure that the code provided is both readable and reproducible. We follow [Google's R Style Guide for R code][google-R-guide] for consistency and maintainability, with the exception of using `=` instead of `<-` for variable assignment. Whilst this is largely a matter of preference, `=` does allow for greater compatibility with other mainstream programming languages such as [`C`][C-lang], [`C++`][Cpp-lang], [`Java`][java-lang], etc, and generally results in less obscure bugs in code as it disallows assignment within control structures (e.g. `if()`).

<!-- ## Table of Contents
- [Data](#data)
- [Software](#software):
- [Examples](#examples):
- [Journals](#journals)
- [Themes](#themes):
    - [Uncertainty in Smart Meter Data](#smart-meter-uncertainty)    
    - [UK Smart Meter Rollout](#smart-meter-rollout)
 - [Books](#books)
- [Courses](#courses) 
-->

<!-- References -->
[comment]: # (Web Links)
[smip]: https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/245736/smart_meters_domestic_leaflet.pdf
[awesome-Python]: https://github.com/vinta/awesome-python
[awesome-R]: https://github.com/qinwf/awesome-R
[EDRP]: https://discover.ukdataservice.ac.uk/catalogue/?sn=7591&type=data%20catalogue
[Elam Paper]: https://www.cse.org.uk/downloads/file/teddinet-paper-simon-elam-technical-annex.pdf
[EULA]: https://www.ukdataservice.ac.uk/get-data/how-to-access/conditions
[google-R-guide]: https://google.github.io/styleguide/Rguide.xml
[Nature Table]: https://www.nature.com/articles/sdata2016122/tables/1?proof=true
[PEP-guide]: https://www.python.org/dev/peps/pep-0008/
[R-nb]: http://rmarkdown.rstudio.com/r_notebooks.html
[Jupyter-nb]: http://jupyter.org/
[Py-lang]: https://docs.python.org/3/
[R-lang]: https://www.r-project.org/about.html
[Cpp-lang]: http://www.stroustrup.com/C++.html
[C-lang]: https://www.gnu.org/software/gnu-c-manual/gnu-c-manual.html
[java-lang]: https://docs.oracle.com/javase/8/docs/technotes/guides/language/index.html
[LCL]: https://data.london.gov.uk/dataset/smartmeter-energy-use-data-in-london-households
[REFIT]: http://dx.doi.org/10.15129/9ab14b0e-19ac-4279-938f-27f643078cec
[SMETS 1]: https://www.gov.uk/government/uploads/system/uploads/attachment_data/file/299395/smets.pdf
[UK-DALE]: https://www.doc.ic.ac.uk/~dk3810/data/
[UKDS]: http://sp.ukdataservice.ac.uk/newRegistration/newLogin.asp
[Feather]: https://github.com/wesm/feather
[comment]: # (Repos Links)
[smrp-examples]: ../examples
