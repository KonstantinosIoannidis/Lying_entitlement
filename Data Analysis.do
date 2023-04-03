** Prepare raw experimental data **
import delimited "..\Data\Experimental Data.csv", encoding(UTF-8) clear
run "..\Stata\Prepare Raw Data.do"

** Subsection 3.1 **
do "..\Stata\Main Effect.do"
do "..\Stata\Econometric Estimation.do"