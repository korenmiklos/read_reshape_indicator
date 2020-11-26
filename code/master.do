* run this from root folder of projects so that code can called from code/...
* and data can be read from data/...

* we use ftools, reghdfe and outreg2
* if you don't have these, uncomment and run next code once

* do code/install.do

* the same code, but parametrized with different indicators
do code/read_reshape_indicator.do gdp gdp_per_capita "GDP per capita"
do code/read_reshape_indicator.do pop population "Population"
do code/compute_distance_to_USA.do
do code/create_analysis_sample.do
