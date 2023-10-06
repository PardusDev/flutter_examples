import 'package:flutter/material.dart';

class MultipleSelectionPage extends StatefulWidget {
  const MultipleSelectionPage({super.key});

  @override
  State<MultipleSelectionPage> createState() => _MultipleSelectionPageState();
}

class _MultipleSelectionPageState extends State<MultipleSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(width: 15,),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      child: Container(
                        height: 5,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    ),
                    SizedBox(width: 15,),
                  ],
                ),
                SizedBox(height: 80),
                Text("What are\nyour hobbies?", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w600, fontSize: 42),),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      direction: Axis.vertical,
                      spacing: 15,
                      children: [
                        Selection(text: "Reading"),
                        Selection(text: "Painting"),
                        Selection(text: "Cooking"),
                        Selection(text: "Hiking"),
                        Selection(text: "Gardening"),
                        Selection(text: "Origami"),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Wrap(
                      spacing: 15,
                      direction: Axis.vertical,
                      children: [
                        Selection(text: "Photography"),
                        Selection(text: "Dancing"),
                        Selection(text: "Fishing"),
                        Selection(text: "Traveling"),
                        Selection(text: "Swimming"),
                        Selection(text: "Jogging"),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 50,),
                MaterialButton(
                  onPressed: () {  },
                  minWidth: 350,
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Skip",style: TextStyle(fontSize: 22, color: Colors.black)),
                ),
                SizedBox(height: 10,),
                MaterialButton(
                  onPressed: () {  },
                  minWidth: 350,
                  height: 60,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 140),
                  color: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Continue",style: TextStyle(fontSize: 22, color: Colors.white)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Selection extends StatefulWidget {
  final String text;

  Selection({required this.text});

  @override
  _Selection createState() => _Selection();
}

class _Selection extends State<Selection> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },

      child: ClipRRect(
          borderRadius: BorderRadius.circular(40),
          child: Container(
            height: 60,
            width: 170,
            color: _isChecked ? Color.fromRGBO(247, 215, 134, 1.0) : Color.fromRGBO(250, 239, 211, 1.0),
            child: Center(child: Text(widget.text, style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w400),)),
          )
      ),
    );
  }
}