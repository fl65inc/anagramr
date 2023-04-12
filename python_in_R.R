# Run Python and access results

library(reticulate)

source_python("pyGetAnagrams.py")
{
  time1 <- proc.time()
  anagrams <- getAnagrams("dict.txt")
  print(proc.time() - time1)
}

print(anagrams[['ilos']])

length(anagrams)

