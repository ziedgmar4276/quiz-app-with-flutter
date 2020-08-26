import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final  int resultScore;
  final  Function  ResetHandler;
  Result(this.resultScore,this.ResetHandler);

  String  get  resultPhrase{
    String resualtText;
if(resultScore<=8){
      resualtText="you are  awsone  and innocent ! ";
    }else if (resultScore <=12){
resualtText ='pertty  likeable!';
    }else if (resultScore <=16){
  resualtText='you  are  so bad';
    }else  {
  resualtText ="very good";
    }
return resualtText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Column(
        children: <Widget>[
          Text(resultPhrase,
            style: TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!',
          ),
            textColor: Colors.blue,
            onPressed: ResetHandler,),
        ],
      ) ,

    );
  }
}