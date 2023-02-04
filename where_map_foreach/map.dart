void main(List<String> args) {
  // use map to convert every grade with A , B , C , D , F
  Map<String, int> grades = {'Ahmed': 75, 'Youssef': 82, 'Sherif': 90};
  Map<String, String> gradesWithLetters = {};
  String temp = "";

  grades.forEach((key, value) {
    if(value > 50){
      temp = "D";
      if(value > 70){
        temp = "C";
        if(value > 80){
          temp = "B";
          if(value > 90){
            temp = "A";
          }
        }
      }
    }
    gradesWithLetters[key] = temp;
  });

  print(gradesWithLetters);
  // output should be {'Ahmed': 'C', 'Youssef': 'B', 'Sherif': 'A'}

}