use "data/derived/analysis_sample.dta", clear

regress ln_gdp_per_capita ln_population ln_dist 
outreg2 using "output/regression.xlsx", replace

regress ln_gdp_per_capita ln_population ln_dist, robust
outreg2 using "output/regression.xlsx", append

regress ln_gdp_per_capita ln_population ln_dist if year == 2011, robust
outreg2 using "output/regression.xlsx", append

regress ln_gdp_per_capita ln_population ln_dist i.year, robust
outreg2 using "output/regression.xlsx", append

reghdfe ln_gdp_per_capita ln_population ln_dist, absorb(year)
outreg2 using "output/regression.xlsx", append

reghdfe ln_gdp_per_capita ln_population ln_dist, absorb(year countrycode )
outreg2 using "output/regression.xlsx", append

scatter ln_gdp_per_capita ln_dist if year==2011
graph save "output/distance_gdp_scatter.gph", replace
graph export "output/distance_gdp_scatter.pdf", replace
