import 'dart:io';

class Solution{
int lengthOfLongestSubstring(String s) {
  Set<String> charSet = {};
  int maxLength = 0;
  int start = 0;

  for (int end = 0; end < s.length; end++) {
    while (charSet.contains(s[end])) {
      charSet.remove(s[start]);
      start++;
    }
    charSet.add(s[end]);
    maxLength = maxLength > (end - start + 1) ? maxLength : (end - start + 1);
  }

  return maxLength;
 }
}

void main(){
  Solution call = new Solution();
  int length = call.lengthOfLongestSubstring("abcabcbb");
  stdout.write(length);
}
