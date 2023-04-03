** Generate index variable **
generate index = _n
order index, first
label variable index "Index" 

** Recode variables **
** gender **
rename gender gender_raw
encode gender_raw, generate(gender)
label define genders 1 "Female" 2 "Male" 3 "Other"
label values gender genders
drop gender_raw
** marital status **
rename marital marital_raw
encode marital_raw, generate(marital)
label define maritals 1 "Single" 2 "In a relationship" 3 "Married" 4 "Widowed" 5 "Divorced/Separated"
label values marital maritals
drop marital_raw
** education status **
rename education education_raw
encode education_raw, generate(education)
label define educations 1 "Less than high school" 2 "High school graduate" 3 "Technical/vocational training" 4 "Bachelor degree" 5 "Master degree" 6 "Doctorate degree"
label values education educations
drop education_raw
** employment status **
rename employment employment_raw
encode employment_raw, generate(employment)
label define employments 1 "Unemployed" 2 "Employed full time" 3 "Employed part time" 4 "Retired" 5 "Student"
label values employment employments
drop employment_raw
** treatment **
rename treatment treatment_raw
encode treatment_raw, generate(treatment)
replace treatment = 0 if treatment == 1
replace treatment = 1 if treatment == 2
label define treatments 0 "No competition" 1 "Competition"
label values treatment treatments
order treatment, after(index)
drop treatment_raw

** Label variables **
label variable index "Index"
label variable belief "Belief on relative performance"
label variable die_roll "Die roll"
label variable age "Age"
label variable gender "Gender"
label variable marital "Marital status"
label variable education "Education status"
label variable employment "Employment status"
label variable treatment "Treatment"
label variable correct "Solved matrices"
label variable wrong "Unsolved matrices"
label variable piece_rate "Piece-rate"
label variable payment "Total payoff"

** Label Dataset **
label data "Competition and lying - Experiment"