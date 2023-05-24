// ignore_for_file: avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors, sized_box_for_whitespace, use_key_in_widget_constructors, must_be_immutable

import 'package:flutter/material.dart';

const activeColor = Color(0xFF736DD2);
const inActiveColor = Color(0xFFFFFFFF);

class SymptomsScreen extends StatefulWidget {

  const SymptomsScreen({Key? key}) : super(key: key);

  @override
  State<SymptomsScreen> createState() => _SymptomsScreenState();
}

class _SymptomsScreenState extends State<SymptomsScreen> {

  Color yesBoxColor = activeColor;
  Color noBoxColor = inActiveColor;

  void updateBoxColor(int aggreeiable){
    if (aggreeiable == 1) {
      if (yesBoxColor == inActiveColor) {
        yesBoxColor = activeColor;
        noBoxColor = inActiveColor;
      }  else{
        yesBoxColor = inActiveColor;
        noBoxColor = activeColor;
      }
    }  else{
      if (noBoxColor == inActiveColor) {
        noBoxColor = activeColor;
        yesBoxColor = inActiveColor;
      }  else{
        noBoxColor = inActiveColor;
        yesBoxColor = activeColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/background.png'),
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50 , left: 20),
            child: Icon(Icons.arrow_back_ios_new),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image(image: AssetImage('assets/diagnosis.png'),),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Have  you very dry skin ?" , style: TextStyle(
                    fontSize: 25,
                  ),),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80 , left: 80),
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              updateBoxColor(1);
                            });
                          },
                          child: ContainerBox(
                            boxColor: yesBoxColor,
                            text: "Yes",
                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              updateBoxColor(1);
                            });
                          },
                          child: ContainerBox(
                            boxColor: noBoxColor,
                            text: "No",
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 80 , left: 160),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 2.0,
                            offset: Offset(0, 4),
                          ),
                        ]
                      ),
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF736DD2),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text("Next" , style: TextStyle(
                          fontSize: 18,
                        ),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ContainerBox extends StatelessWidget {
   String? text;
   Color? boxColor;
   ContainerBox({@required this.text , @required this.boxColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0xFF736DD2),
        ),
        borderRadius: BorderRadius.circular(15.0),
        color: boxColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1.0,
            blurRadius: 5.0,
            offset: Offset(0, 8),
          ),
        ]
      ),
      child: Center(
        child: Text(
          text!,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

