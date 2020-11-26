use "data/derived/gdp_per_capita.dta", clear
merge 1:1 countrycode year using "data/derived/population.dta", nogenerate 
merge m:1 countrycode using "data/derived/distance_to_USA.dta", nogenerate keep(match)
drop if missing(gdp_per_capita, population, dist)

foreach X in gdp_per_capita population dist {
	generate ln_`X' = ln(`X')
}

keep countrycode year countryname gdp_per_capita population ln_* comlang_off
save "data/derived/analysis_sample.dta", replace
