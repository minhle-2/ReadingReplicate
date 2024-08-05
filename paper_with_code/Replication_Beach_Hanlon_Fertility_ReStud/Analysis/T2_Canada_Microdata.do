use "$temp_dir/Canadian_Microdata.dta" if inlist(period,"72_77","78_81"), clear
label variable mom_british "British Origin"
label variable age_binXyear "Mother age X Year"
label variable head_occXyear "Head Occupation X Year"

*Baseline results -- Quebec and Ontario Only
eststo micro_ca_1: reghdfe bc_scaled mom_british britXpost period_fe if  inlist(provca,15,17), absorb(distca period_fe) cluster(distca)

* All counties
gen post = period_fe 
eststo micro_ca_2: reghdfe bc_scaled mom_british britXpost  post, absorb(distca) cluster(distca)

* Dist X year
eststo micro_ca_3: reghdfe bc_scaled mom_british britXpost, absorb(distXyear) cluster(distca)

* Age bin X year
eststo micro_ca_4: reghdfe bc_scaled mom_british britXpost, absorb(distXyear age_binXyear) cluster(distca)

* Occ X year
eststo micro_ca_5: reghdfe bc_scaled mom_british britXpost  age_binXyear head_occXyear, absorb(distXyear)  cluster(distca)

esttab  micro_ca_2 micro_ca_5 using "$results/T2_Canada_mico", label stats(N, label("Observations") fmt(%9.0fc)) b(3) se(3) star(* 0.10 ** 0.05 *** 0.01) mtitles( "Distr Time FE" "Distr x Time FE") replace tex 
