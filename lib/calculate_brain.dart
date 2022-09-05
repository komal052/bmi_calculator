import 'dart:math';


class calculate_brain
{
  calculate_brain({required this.height,required this.weight});

  final int height;
  final int weight;

  double _bmi=0;

  String calculateBMI()
  {
    _bmi=weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getresult(){
    if(_bmi>=25){
      return 'over weight';
    }else if(_bmi>18.5){
      return 'normal';
    }else
      {
        return 'under weight';
      }
  }
  String getInterpretation(){

    if(_bmi>=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if(_bmi>18.5){
      return ' you have a normal body weight. god job!';
    }else
    {
      return 'you have a lower than normal body weight. You can eat a bit more.';
    }
  }
}