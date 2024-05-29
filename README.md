## Description

This repository includes the data and the Stata code used in Ioannidis K. & Soraperra I. (2023). [Uncertainty about winning a competition, entitlement, and lying].
<!-- (https://link.springer.com/article/10.1007/s40881-020-00094-1). *Journal of the Economic Science Association* -->

### Abstract

Competitive environments and markets are often believed to erode moral behavior. We test whether pure exposure to a competitive environment leads to increased lying. Subjects participate in a real-effort task with either low or high the piece-rate. Our treatments vary whether the high piece-rate is awarded based on a random draw or based on performance. Subsequently, subjects perform a die-under-the-cup task. Our results suggest that pure exposure to the competitive environment does not erode morals as we find no evidence of increasing lying.

### Software

The analysis was conducted using ```Stata 17```.

### Files

The files are stored in two folders: Data, which contains data from the experiment, and Stata, which contains the Stata code to produce every result in the paper..

1. Data
   * Experimental Data.csv (*The raw data from the experiment in csv format*)
   * Experimental Codebook.md (*Codebook for ```Experimental Data.csv```*)
2. Stata
   * Data Analysis.do (*Calls and executes all other files*)
   * Prepare Raw Data.do (*Cleans raw experimental data and prepares it for analysis*)
<!-- * Main Effect.do (*Produces the main result of Subsection 3.1, and Figure 1*)
   * Econometric Estimation.do (*Produces the results of Subsection 3.2, and Table 1*)-->

### Instructions
To run the code, you only need to run **Data Analysis.do**.

## Contributing

**[Konstantinos Ioannidis](http://konstantinosioannidis.com/)** 
For any questions, please email me here **ioannidis.a.konstantinos@gmail.com**.
