args shortname longname varlabel

import delimited "https://raw.githubusercontent.com/korenmiklos/dc-economics-data/master/data/web/`shortname'.csv", varnames(1) bindquotes(strict) encoding("utf-8") clear
reshape long `shortname', i(countrycode) j(year)
rename `shortname' `longname'
label variable `longname' "`varlabel'"
save "data/derived/`longname'.dta", replace
