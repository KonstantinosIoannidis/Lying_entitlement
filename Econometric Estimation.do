** Aggregate treatment effect **
eststo aggregate: quietly ///
tobit die_roll treatment belief correct age gender marital education employment, ul ll
** Heterogeneous treatment effects **
** Gender **
eststo gender_1: quietly ///
tobit die_roll treatment belief correct age marital education employment if gender == 1, ul ll
eststo gender_2: quietly ///
tobit die_roll treatment belief correct age marital education employment if gender == 2, ul ll
** Ability **
eststo skill: quietly ///
tobit die_roll treatment belief age gender marital education employment if correct == 7, ul ll
** Confidence **
eststo belief: quietly ///
tobit die_roll treatment correct age gender marital education employment if belief >= 25 & belief < 75, ul ll
** Table 1 **
esttab aggregate gender_1 gender_2 skill belief using "regressions.tex", ///
indicate(Controls = age gender marital education employment) se r2 label nonumber nonotes noomitted nobaselevels interaction(*) b(3) obslast replace type ///
addnotes("\sym{*} \(p<0.05\), \sym{**} \(p<0.01\), \sym{***} \(p<0.001\)")

tobit die_roll treatment correct age gender marital education employment if belief >= 35 & belief < 65, ul ll

tobit die_roll treatment correct age gender marital education employment if belief >= 45 & belief < 55, ul ll

tobit die_roll treatment correct age gender marital education employment if belief >= 15 & belief < 85, ul ll




