# bibfolder <- "C:/Users/wildscop/Documents/GitHub/ehsankarim/content/publication/journal-article"
bibfolder <- "C:/Users/ehsan/Documents/GitHub/ehsankarim/content/publication/journal-article"
setwd(bibfolder)
if (!require("bib2academic")) devtools::install_github("petzi53/bib2academic")
#Load package
library(bib2academic)
bib2acad(
  paste0(
    getwd(),
    "/cite.bib"),
  copybib = TRUE, abstract = FALSE, overwrite = TRUE)
bibFiles <- list.files(paste0(getwd(),"/my-bib-folder"), full.names = TRUE)
mdFiles <- list.files(paste0(getwd(),"/my-md-folder"), full.names = TRUE)
file.copy(from = bibFiles, to = getwd())
file.copy(from = mdFiles, to = getwd())
unlink(paste0(getwd(),"/my-bib-folder"), recursive = TRUE, force = TRUE)
unlink(paste0(getwd(),"/my-md-folder"), recursive = TRUE, force = TRUE)

# https://amirdjv.netlify.com/post/converting-bibtex-files-to-md-files/
#If you wish to clean and rebuild the site from start.
#rmarkdown::clean_site()
#If you wish to build the site with out preview
#blogdown::build_site()
#If you wish to build and preview the site
#blogdown::serve_site()

