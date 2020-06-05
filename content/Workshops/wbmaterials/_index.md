---
header:
  caption: ""
  image: ""
title: Webinar Materials
layout: docs
---

# Introduction to Causal Inference: Propensity Score Analysis in Healthcare Data

## Summary

This webinar will focus on learning causal inference approaches in a healthcare data analysis context with a particular focus on explaining the application of propensity score analysis in a real-world data analysis context. The session will outline how these analyses are different than conventional regression methods and will address key assumptions/diagnostics of these models.

## Objectives

- Describe the basic concepts associated with causal inference and propensity score approaches
- Applying propensity score methods (e.g., matching and inverse probability weighting)
- Demonstrate a propensity score analysis using R software and a sample dataset
- Explain assumptions and diagnostics of propensity score analyses
- Outline some extensions of this approach in solving complex real-world problems in the healthcare data analysis context (e.g., in longitudinal and big-data context).
- (extra slides) Discuss the best practices associated with propensity score analyses


## Requirement

Background in causal inference is not required. Attendees should have prerequisite knowledge of multiple regression analysis and working knowledge in R (e.g., basic data manipulation and regression fitting). In the webinar, R will be the primary software package used to demonstrate the implementations. 

## Sample Data Source

To learn more about the research case example and related training dataset that will be used for this webinar session, please see the following web links:

- [Research Article](https://jamanetwork.com/journals/jama/articlepdf/407990/jama_276_11_030.pdf): The effectiveness of Right Heart Catheterization in the initial care of critically ill patients.
- [Details](http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/rhc.html) about the training dataset:
- Link to download the [training dataset](http://biostat.mc.vanderbilt.edu/wiki/pub/Main/DataSets/rhc.csv).

## Webinar files

- [Slides](https://tinyurl.com/ps20slides) are viewable online
- [GitHub page](https://ehsanx.github.io/popdataBCwebinar/)
- [GitHub files](https://github.com/ehsanx/popdataBCwebinar)
- [PopData BC link](https://www.popdata.bc.ca/events/etu/Advanced_Methods_Causal_Inf_May14_2020) for the general description of the webinar. The video is hosted on the [PopData BC youtube channel](https://www.youtube.com/channel/UCavuC5RfLRUv_8XZxYDR0FA).

<iframe width="560" height="315" src="https://www.youtube.com/embed/nPnaZV1Lr2s" frameborder="0" allowfullscreen></iframe>

## Software Requirements

It is assumed that you have the following software packages installed. Webinar does not provide any installation support. Note that, working on software during the webinar is not mandatory. But if the participant like, they are welcome to browse through the webinar slides (as well as check out other materials) in their own laptop.

- R from the following sources (installing either one is fine)
  - [CRAN](https://cran.r-project.org/) or 
  - [MRAN](https://mran.microsoft.com/open) 
- IDE
  - [RStudio desktop](https://www.rstudio.com/products/rstudio/download/) (installation necessary)
  - Online accounts (no installation necessary, a supported browser is fine)
    - Signup for an account on [rstudio.cloud](https://login.rstudio.cloud/login?redirect=%2Foauth%2Fauthorize%3Fredirect_uri%3Dhttps%253A%252F%252Frstudio.cloud%252Flogin%26client_id%3Drstudio-cloud%26response_type%3Dcode%26show_auth%3D0%26show_login%3D1%26show_setup%3D1&amp;setup=True)
    -  Signup for an account on [Kaggle](https://www.kaggle.com/) (and choose R)

# References

- Austin, P. C. (2011). A tutorial and case study in propensity score analysis: an application to estimating the effect of in-hospital smoking cessation counseling on mortality. Multivariate behavioral research, 46(1), 119-151. [link](https://www.tandfonline.com/doi/pdf/10.1080/00273171.2011.540480)
- Stuart, E. A. (2018). Propensity Scores and Matching Methods. In The Reviewer's Guide to Quantitative Methods in the Social Sciences (pp. 388-396). Routledge. [link](https://www.taylorfrancis.com/books/e/9781315755649/chapters/10.4324%2F9781315755649-28)
- (additional) Lee, J., & Little, T. D. (2017). A practical guide to propensity score analysis for applied clinical research. Behaviour research and therapy, 98, 76-90. [link](https://www.sciencedirect.com/science/article/abs/pii/S0005796717300141)