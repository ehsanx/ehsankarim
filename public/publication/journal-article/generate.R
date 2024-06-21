
# bibfolder <- "C:/Users/wildscop/Documents/GitHub/ehsankarim/content/publication/journal-article"
bibfolder <- "C:/Users/ehsan/Documents/GitHub/ehsankarim/content/publication/journal-article"
#bibfolder <- "C:/Users/wilds/Documents/GitHub/ehsankarim/content/publication/journal-article"

######################


library(scholar)
library(RefManageR)

# Your Google Scholar ID
scholar_id <- "fStySaMAAAAJ"

# Get publications
publications <- get_publications(scholar_id)

convert_to_bibentry <- function(publications) {
  bib_entries <- lapply(1:nrow(publications), function(i) {
    # Create the BibTeX entry
    entry <- list(
      bibtype = ifelse(grepl("conference", tolower(publications$journal[i])), "inproceedings", "article"),
      key = sub(" ", "", publications$title[i]),
      title = publications$title[i],
      author = publications$author[i],
      journal = publications$journal[i],
      volume = ifelse(!is.na(publications$volume[i]), publications$volume[i], ""),
      number = ifelse(!is.na(publications$number[i]), publications$number[i], ""),
      pages = ifelse(!is.na(publications$pages[i]), publications$pages[i], ""),
      year = publications$year[i],
      publisher = ifelse(!is.na(publications$publisher[i]), publications$publisher[i], ""),
      booktitle = ifelse(!is.na(publications$booktitle[i]), publications$booktitle[i], "")
    )
    
    # Convert list to BibEntry
    bib_entry <- as.BibEntry(entry)
    return(bib_entry)
  })
  
  # Combine all BibEntry objects into one
  bib_entries_combined <- do.call("c", bib_entries)
  return(bib_entries_combined)
}

# Convert the data frame to BibEntry objects
bibtex_data <- convert_to_bibentry(publications)

# Save to BibTeX file
WriteBib(bibtex_data, file = "citations.bib")


######################
# open R (not rstudio) as an admin, and install required packages; packages required by  bib2academic and bibtex

setwd(bibfolder)
# devtools::install_github("petzi53/bib2academic")
# remotes::install_github("ROpenSci/bibtex")
#Load package
library(bib2academic)
bib2acad(
  paste0(
    getwd(),
    "/citations.bib"),
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



library(ggplot2)
# Your Google Scholar ID
scholar_id <- "fStySaMAAAAJ"
# Get citation history
citations <- get_citation_history(scholar_id)
# Get the current date
collection_date <- Sys.Date()

# Create the plot
citation_plot <- ggplot(citations, aes(x = year, y = cites)) +
  geom_line() +
  geom_point() +
  labs(
    x = "Year", 
    y = "Citations",
    caption = paste("Data collected on:", collection_date)
  ) +
  theme_minimal()

parent_dir <- dirname(bibfolder)

# Save the plot as a PNG file in the parent directory
ggsave(file.path(parent_dir, "cite.png"), plot = citation_plot, width = 8, height = 6)
