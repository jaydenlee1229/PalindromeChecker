public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if(reverse(noSpaces(noCapitals(word))).equals(noSpaces(noCapitals(word))))
  {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      String t = str.substring(i, i + 1);
      sNew = sNew + t;
    }
    return sNew;
}
public String noSpaces(String sWord)
{
  String s = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if(Character.isLetter(sWord.charAt(i)) == true)
    {
      s = s + sWord.charAt(i);
    }
  }
  return s;
}
public String noCapitals(String sStr)
{
  return sStr.toLowerCase();
}