bool isPalindrome(String s) {
  if (s.length < 3) return false;

  int left = 0;
  int right = s.length - 1;

  while (right > left) {
    if (s[left++] != s[right--]) {
      //print('s[left]: ${s[left]}');
      //print('s[right]: ${s[right]}');
      //print('s: $s');
      return false;
    }
  }
  return true;
}
