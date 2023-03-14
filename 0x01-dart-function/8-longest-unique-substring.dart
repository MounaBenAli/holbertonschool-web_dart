String longestUniqueSubstring(String str) {
  String searchSubstr = ''; 
  String longestSubstring = ''; 

  for (int i = 0; i < str.length; i++) 
  { 
    int index = searchSubstr.indexOf(str[i]); 
    
    if (index == -1)
    { 
      searchSubstr += str[i];
      //print('str: $searchSubstr'); 
      if (searchSubstr.length > longestSubstring.length) {
        longestSubstring = searchSubstr; 
      }
    } else { 
      searchSubstr = searchSubstr.substring(index + 1) + str[i];
        }
  }
  return longestSubstring; 
}
