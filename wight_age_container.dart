import 'package:flutter/material.dart';
class WightAgeContainer extends StatelessWidget {
  final String title;
  final String value;
  final void Function()? addOnPressed;
  final void Function()? removeOnPressed;

  const WightAgeContainer({super.key, required this.title, required this.value, this.addOnPressed, this.removeOnPressed});

  @override
  Widget build(BuildContext context) {

    return
      InkWell(
        child: Container(
          width: 155,
        padding: EdgeInsets.all(30),
        
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: Color(0xff24263B),
        
          ),
          child: Column(
            children: [
              Text(title
                ,style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
        
              ), Text(value
                ,style: TextStyle(
                    fontSize: 40, fontWeight: FontWeight.bold
                    ,color:Colors.white
                ),
              ),
        
        
              SizedBox(height: 26,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.small(
        
                    shape: CircleBorder()
        
                    ,onPressed:addOnPressed,
                    child: Icon(Icons.add),
        
        
                  ),
                  FloatingActionButton.small(
        
                    shape: CircleBorder()
        
                    ,onPressed: removeOnPressed,
                    child: Icon(Icons.remove),
        
        
                  ),
                ],
              ),
        
        
            ],
          ),
        ),
      );


  }
}
