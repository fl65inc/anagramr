# final_py.py

def getAnagrams(file_name):
  import re
  # Read in the words
  with open(file_name) as word_file: 
    word_data = word_file.readlines()
  # Process all the words into their root signatures and matches 
  sig_dict = {}  
  for word in word_data:
    word = word.strip() 
    word = word.lower()
    signature = ''.join(sorted(word))
    if signature not in sig_dict: 
      sig_dict[signature] = [word]
    else:
      sig_dict[signature].append(word)
  return sig_dict
