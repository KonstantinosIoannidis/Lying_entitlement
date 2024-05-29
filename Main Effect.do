** Histograms of die rolls by treatment (Figure 1) **
twoway ///
(histogram die_roll if die_roll == 1, discrete frequency fcolor(navy%20) lcolor(none) gap(6)) ///
(histogram die_roll if die_roll == 2, discrete frequency fcolor(navy%30) lcolor(none) gap(6)) ///
(histogram die_roll if die_roll == 3, discrete frequency fcolor(navy%45) lcolor(none) gap(6)) ///
(histogram die_roll if die_roll == 4, discrete frequency fcolor(navy%60) lcolor(none) gap(6)) ///
(histogram die_roll if die_roll == 5, discrete frequency fcolor(navy%75) lcolor(none) gap(6)) ///
(histogram die_roll if die_roll == 6, discrete frequency fcolor(navy%90) lcolor(none) gap(6)) ///
 (function y = 16.7, ra(0.5 6.5) lcolor(black) lwidth(thick) lpattern(dash)), by(treatment, note("") legend(off)) xlabel(1 2 3 4 5 6) ytitle(Percentage of participants) xtitle(Die Roll)
gr_edit .style.editstyle boxstyle(shadestyle(color(white))) editcopy
gr_edit style.editstyle boxstyle(linestyle(color(white))) editcopy
gr_edit .plotregion1.subtitle[1].style.editstyle fillcolor(white) editcopy
gr_edit .plotregion1.subtitle[1].style.editstyle linestyle(width(none)) editcopy
gr_edit .note.text.Arrpush
gr_edit .note.text.Arrpush Horizontal dashed line indicates theoretical distribution of die rolls under honesty.
graph export "die_rolls.png", as(png) replace
** Main effect tests **
tab die_roll treatment, chi2
ranksum die_roll, by(treatment)

