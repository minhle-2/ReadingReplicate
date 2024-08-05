use "$temp_dir/US_Microdata.dta" if inlist(period,"_1878_1880","_1873_1877"), clear
label variable british_hh "British Origins"
***Married women
*Baseline		
eststo T1: reghdfe bc british_hh post_bbXbritish if marst!=6, absorb(momageXyear cnty_id period) cluster(statefip)
gen t1_sample=(e(sample)==1)

*Cnty X year
eststo T2: reghdfe bc british_hh post_bbXbritish if marst!=6, absorb(momageXyear cntyXbirth_yr) cluster(statefip)
gen t2_sample=(e(sample)==1)

*Occupation X year
eststo T3: reghdfe bc british_hh post_bbXbritish if marst!=6, absorb(momageXyear cntyXbirth_yr occXyear) cluster(statefip)


***SINGLES
*Baseline		
eststo T4: reghdfe bc british_hh post_bbXbritish if marst==6, absorb(momageXyear cnty_id period) cluster(statefip)

*Cnty X year
eststo T5: reghdfe bc british_hh post_bbXbritish if marst==6, absorb(momageXyear cntyXbirth_yr) cluster(statefip)

*Occupation X year
eststo T6: reghdfe bc british_hh post_bbXbritish if marst==6, absorb(momageXyear cntyXbirth_yr occXyear) cluster(statefip)

esttab T1 T4  using "$results/T14_US_Microdata", label  stats(N, label("Observations") fmt(%9.0fc)) b(3) se(3) star(* 0.10 ** 0.05 *** 0.01) mtitles("Married Women" "Single Women")  tex replace
