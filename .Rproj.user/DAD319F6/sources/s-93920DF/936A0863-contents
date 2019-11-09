# createSignature()

# Takes in a word, ie "Lois", and converts it into a lower-case, sorted
# version of the word, ie "ilos".

createSignature <- function (
  word
) {

  word <- tolower(word)                          # CONVERT TO LOWER CASE
  word <- unlist(strsplit(word, ""))             # CONVERT TO VECTOR
  signature <- paste0(sort(word), collapse = "") # SORT VECTOR AND JOIN LETTERS

return(signature)

  }