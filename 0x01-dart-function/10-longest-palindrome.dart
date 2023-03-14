import '9-palindrome.dart';

String longestPalindrome(String s) {
  String longestPalindrome = '';

if (s.length < 3) {
    return 'none';
  }

for (int i = 0; i < s.length; i++)
{
  for (int j = i + 1; j <= s.length; j++)
  {
    String substr = s.substring(i, j);
     //print('substring: $substr');
      if(isPalindrome(substr) && substr.length > longestPalindrome.length)
    {
      longestPalindrome= substr; 
    }
  }
}
  if (longestPalindrome.isEmpty) return 'none';
return longestPalindrome;
}