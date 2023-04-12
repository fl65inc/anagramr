def getAnagrams(file_name):
  import re
  # Read in the words
  with open(file_name) as word_file: 
    word_data = word_file.readlines()

  # Process all the words into their root signatures and matches 
  sig_dict = {}  # EMPTY DICTIONARY TO WRITE RESULTS INTO
  for word in word_data:
    word = word.strip() # REMOVE TRAILING \n
    if len(word) >= 4: # WORD MUST BE AT LEAST 4 CHARS LONG
      word = word.lower() # ELIMINATE CASE SO THAT "Lois" AND "soil" MATCH'''
      signature = re.sub(r'[^\w\s]', '', ''.join(sorted(word)))
    # IF signature IS NEW, CREATE NEW DICTIONARY KEY WITH word AS VALUE INSIDE A LIST
      if signature not in sig_dict: 
        sig_dict[signature] = [word]
    # OTHERWISE JUST APPEND THE word AS NEW ENTRY IN VALUE LIST 
      else:
        sig_dict[signature].append(word)
  return sig_dict

