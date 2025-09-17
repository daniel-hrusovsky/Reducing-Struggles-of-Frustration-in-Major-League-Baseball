# Reducing Struggles of Frustration in Major League Baseball

## Overview 
This project is an analysis of the Major League Baseball matchup between hitters attempting to overcome the frustration and struggles when facing pitchers using **mathematical models**.

The goal of this study is to determine the maximum number of "dominant" hitters in Major League Baseball to optimize run production and league revenue

Data comes from [Baseball Reference](https://www.baseball-reference.com/)

## Methodology 
- Built a system of differential equations based on a **dual susceptible-infected (SIS) model** representing interaction between hitters and pitchers
- Performed an eigenvalue approach that finds the equilibria of the differential equations and the Jacobian matrix at these points
- Created two simulations, one with hitters being initially dominant and initially struggling

## Results
- Returned **real negative eigenvalues**, which results in population stability, or our hitters will stay near their equilibria 
- For each simulation, the population of struggling hitters maximizes while the population of struggling and dominant pitchers mediates

## Limitations
- **Biased Parameters:** The set parameters could have been too pitcher-friendly
- **Hitting Success Rate:** Hitters in the struggling population are not actually struggling, as the rate of success for hitting is much lower compared to other sports
