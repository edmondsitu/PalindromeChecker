public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //your code here
  String reverseString = new String();
  String noSpaceString = new String();
  String letterString = new String();
  word = word.toLowerCase();
  for( int j = 0; j < word.length(); j++){
    if(!word.substring(j, j+1).equals(" ")){
      noSpaceString += word.substring(j, j+1);
    }
  }
  for( int k = 0; k < noSpaceString.length(); k++){
    if(Character.isLetter(noSpaceString.charAt(k)) == true){
      letterString += noSpaceString.charAt(k);
    }
  }
  for(int i = letterString.length() - 1; i >= 0; i--){ 
    reverseString += letterString.substring(i, i+1);
    if(reverseString.equals(letterString)){
      return true;
    }
  }
  return false;
}