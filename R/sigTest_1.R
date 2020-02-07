# 1st implementation of signature generation in R

sigTest_1 <- function () {
word_df <- read.csv("dict.txt", col.names = c("word"),header = FALSE,
			stringsAsFactors = FALSE, encoding = "UTF-8")


# previous attempt.  Slow.
signatures <- lapply(word_df$word,
                     function(x)
                     {paste0(sort(unlist(strsplit(tolower(x), ""))), collapse = "")}
                    )
}
