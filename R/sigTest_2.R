# 2nd implementation of signature generation in R, using data.table

library(data.table)

sigTest_2 <- function () {
word_df <- fread("dict.txt", col.names = c("word"),header = FALSE,
			stringsAsFactors = FALSE, encoding = "UTF-8")


# previous attempt.  Slow.
signatures <- lapply(word_df$word,
                     function(x)
                     {paste0(sort(unlist(strsplit(tolower(x), ""))), collapse = "")}
                    )
}
