use "data/raw/cepii/dist_cepii.dta", clear
keep if iso_o == "USA"
rename iso_d countrycode
drop iso_o 
save "data/derived/distance_to_USA.dta", replace
