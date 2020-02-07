# 3nd implementation of signature generation in R.

library(data.table)

sigTest_3 <- function () {
word_df <- fread("dict.txt", col.names = c("word"),header = FALSE,
			stringsAsFactors = FALSE, encoding = "UTF-8")

word_df$lower_case <- tolower(word_df$word)

splits <- strsplit(word_df$lower_case, "", )

n <- length(word_df$word)

# pre-allocate a new vector in the dataframe to write to
word_df$sorted <- vector("character", n)

for (i in 1:n) {
    word_df$sorted[i] <- paste0(sort(splits[[i]]), collapse = "")
}

}
