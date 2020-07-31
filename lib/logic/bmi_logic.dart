
class BMI
{
  double bmiheight=0,bmiweight=0;

  double calculateBMI(){

    var result = bmiweight / (bmiheight * bmiheight);
    return result;
  }

  void assignHeight(double height)
  {
    bmiheight = height/100;
  }
  void assignWeight(double weight)
  {
    bmiweight = weight;
  }
}

