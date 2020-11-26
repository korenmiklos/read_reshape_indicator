use "data/derived/gdp_per_capita.dta", clear
merge 1:1 countrycode year using "data/derived/population.dta", nogenerate 
merge m:1 countrycode using "data/derived/distance_to_USA.dta", nogenerate keep(match)
drop if missing(gdp_per_capita, population, dist)
save "data/derived/analysis_sample.dta", replace
