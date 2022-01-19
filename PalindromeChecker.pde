public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  System.out.println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      System.out.println(lines[i] + " IS a palindrome.");
    }
    else
    {
      System.out.println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String comp = word;
  String check = word;
  comp = reverse(comp);
  comp = noSpaces(comp);
  comp = onlyLetters(comp);
  comp = comp.toLowerCase();
  check = noSpaces(check);
  check = onlyLetters(check);
  check = check.toLowerCase();
  if(comp.equals(check)){
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length(); i > 0; i--){
    sNew = sNew + str.substring(i-1,i);
  }
    return sNew;
}

public String noSpaces(String sWord){
  String ans = "";
  for(int i = 0; i < sWord.length();i++){
    if(sWord.substring(i,i+1).equals(" ")){
    }
    else {
      ans = ans + sWord.substring(i,i+1);
    }
  }
  return ans;
}



public String onlyLetters(String sString){
  String ans = "";
  for (int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)) == true){
      ans = ans + sString.substring(i,i+1);
    }
  }
return ans;
}
