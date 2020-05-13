---
header:
  caption: ""
  image: ""
title: Workshop Materials
layout: docs
---

# Propensity Score Analysis in the Context of Complex Survey Data

## Summary

Researchers and statisticians frequently use propensity score analyses (PSA) to analyze observational datasets and reduce the impact of confounding due to observed covariates. In many of these applied studies, nationally representative population-based complex survey datasets are frequently used. Most of these studies incorrectly choose to ignore the complex survey design features; partly because there is a lack of clear guidelines of how PSA should be implemented in a complex survey data analysis context. Only a few relatively recent studies have examined how to incorporate PSA in this context, and some of these recommendations are contradictory, inconclusive, or not generalizable to all types of PSA. This workshop will help recognize some of the challenges and open questions in the &#39;big data&#39; analysis setting. The workshop is aimed at practitioners and is particularly focused on demonstrating the implementation of PSA in a complex survey data analysis context through an illustrative data analysis exercise.

## Requirement

Background in causal inference or survey data analysis is not required. Attendees should have prerequisite knowledge of multiple regression analysis and working knowledge in R (e.g., basic data manipulation and regression fitting). In the workshop, R will be the primary software package used to demonstrate the implementations. The provided software codes will be annotated and basic steps will be explained for those who prefer to use other software packages.

## Slides

- Live links:
  - **Link for the slides will be live during the workshop event**.
  - Past workshop participants can contact me directly for any relevant questions (please use the email address via which you registered). The links provided during those workshops (for online viewing and download) are still live.

## Pre-reading  

recommend taking a look at the following sections for some background knowledge:

- &quot;Methods&quot; section of _Austin, P. C._ (2011). A tutorial and case study in propensity score analysis: an application to estimating the effect of in-hospital smoking cessation counseling on mortality. Multivariate behavioral research, 46(1), 119-151. ([link](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC3266945/))
- (optional) &quot;Section 4&quot; of _Zanutto EL._ (2006) A comparison of propensity score and linear regression analysis of complex survey data. Journal of Data Science; 4: 67-91. ([link](http://www.jds-online.com/file_download/94/jds-233.pdf))

## Pre-workshop Quiz

- Response link: [forms.gle/zeXZTCS3bYusPQTq9](https://forms.gle/zeXZTCS3bYusPQTq9)

## Sample Data Source

- National Health and Nutrition Examination Survey ([NHANES](https://wwwn.cdc.gov/nchs/nhanes/)) cycle 2007-08
- Sample data in R format ([download](https://drive.google.com/uc?id=1SrnmBN2GE6H3sRDsRTyEUtrIioAbVxZ1)): _object  __DT9a__  contains our analytic data example_.
- How was the analytic data created? (_for those who are interested_)
  - [Kaggle notebook](https://www.kaggle.com/wildscop/accessing-nhanes-data-directly-from-cdc-website), or
  - [R logbook](https://drive.google.com/file/d/1ls01M4R9uxMazVY-oDdwN-IL4zRHihIr/view?usp=sharing) (Rmarkdown output PDF file)
- Estimates shown in the slide (see the [Rmarkdown file](https://drive.google.com/file/d/1FueY3IS2q-3s7IxIEXsIqVx-ZAqa4-8F/view?usp=sharing) for the exact same dataset as shown in the slides) and the estimates in the markdown/Kaggle notebook files may vary. The analyses shown in the markdown/Kaggle notebook files are using a slightly more complex eligibility criteria. See the &#39;Sample Code Chunks&#39; below.

## Software Requirements

It is assumed that you have the following software packages installed. Workshop does not provide any installation support. Note that, bringing a laptop is not mandatory. But if the participant would like to browse through the workshop slides (as well as check out other materials) in their own laptop, they are welcome to bring a laptop that is adequately charged (enough outlet may not be available).

- R from [CRAN](https://cran.r-project.org/) or [MRAN](https://mran.microsoft.com/open) (installing either one is fine)
- [RStudio desktop](https://www.rstudio.com/products/rstudio/download/) (installation necessary)
- Online accounts (no installation necessary, a supported browser is fine)
  - Signup for an account on [rstudio.cloud](https://login.rstudio.cloud/login?redirect=%2Foauth%2Fauthorize%3Fredirect_uri%3Dhttps%253A%252F%252Frstudio.cloud%252Flogin%26client_id%3Drstudio-cloud%26response_type%3Dcode%26show_auth%3D0%26show_login%3D1%26show_setup%3D1&amp;setup=True)
  - Signup for an account on [Kaggle](https://www.kaggle.com/) (and choose R)

## Sample Code Chunks: 

Code of some of the analyses shown in the workshop. Feel free to take a look at them beforehand if you wish. Code for installing required packages are provided at the top of each code chink

- Codes/Markdowns
  - [chunk1](https://drive.google.com/uc?id=1W1Tu6IVOY5_eIUSX7757zRNQ_hsFwiBL) (_data download_),
    - Markdown logfile for the above code chunk: [log1](https://drive.google.com/uc?id=1yB2Txg0JYEvoIkJH3ezeyCmzN9LWbQAP)
  - [chunk2](https://drive.google.com/uc?id=13RoSjc9CR7qfj0YFmnbgehr7mgYfLRrg) (_table 1 &amp; logistic regression fit_),
    - Markdown logfile for the above code chunk: [log2](https://drive.google.com/uc?id=1h9CHS5YkMWMYmf0bf4b721MUq8VX7Vbe)
    - [Kaggle notebook](https://www.kaggle.com/wildscop/nhanes-data-regression-summary) of the above code chunk
  - [chunk3](https://drive.google.com/uc?id=1ibFRKXucoPjUjyekbgsH4WSZQTDA0hqG) (_basic propensity score matching_),
    - Markdown logfile for the above code chunk: [log3](https://drive.google.com/uc?id=1LaU3zcjtFSAPrFJM1VoiTW1oSiHkuZyN)
    - [Kaggle notebook](https://www.kaggle.com/wildscop/propensity-score-matching-on-nhanes) of the above code chunk
    - Note: In matching, estimates may vary due to randomness. Set [seed](https://www.rdocumentation.org/packages/simEd/versions/1.0.3/topics/set.seed).
  - [chunk4](https://drive.google.com/uc?id=1T-y5jjdq7FOqPRusFN9RfMSOePKGG2Fp) (_basic survey data analysis_),
    - Markdown logfile for the above code chunk: [log4](https://drive.google.com/uc?id=1TmlewoN_A8c18qyAvFmWb3Bk2oDpkK5U)
    - [Kaggle notebook](https://www.kaggle.com/wildscop/nhanes-complex-survey-data-analysis) of the above code chunk
  - [chunk5](https://drive.google.com/uc?id=1VpYhyUmBw6FzJ8qMs5IGdq3FL8k994Sj) (_basic propensity score weighting_)
    - Markdown logfile for the above code chunk: [log5](https://drive.google.com/uc?id=1VRrQjZaTT8Wrpf5H-G6U8WFLHjyXCD0H)
    - [Kaggle notebook](https://www.kaggle.com/wildscop/propensity-score-weighting-on-nhanes) of the above code chunk
- Brainstorming exercise: (optional) After reviewing the above codes of propensity score analysis (chunk3) and survey data analysis (chunk4), can you think of ways to combine both analysis (i.e., applying propensity score analysis in the context of complex surveys, where you may want to incorporate survey features, such as, interview weights, strata and PSU in your propensity score analysis)? We will discuss in details about various options during the workshop.

## In-workshop Quiz: 

- Response link: [pollEv.com/ehsank878](http://pollev.com/ehsank878) (will be activated during the workshop if internet available: eduroam network should be available for North American Universities).
- Get the [relevant app](https://www.polleverywhere.com/mobile) if responding from your smartphone. Note that, downloading the app is not necessary; there is a text option available as well for North American cell phone carriers.