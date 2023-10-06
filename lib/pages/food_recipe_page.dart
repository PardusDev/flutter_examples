import 'package:flutter/material.dart';

class FoodRecipePage extends StatefulWidget {
  const FoodRecipePage({super.key});

  @override
  State<FoodRecipePage> createState() => _FoodRecipePageState();
}

class _FoodRecipePageState extends State<FoodRecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Center(child: Text("Food Recipes", style: TextStyle(color: Colors.black),)),
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(250, 250, 250, 1.0),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {  },
              icon: Icon(Icons.chevron_left, color: Colors.black,),
            ),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(250, 250, 250, 1.0),
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.favorite_border, color: Colors.black),
                onPressed: () {

                },
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Center(child: FractionallySizedBox(widthFactor: 0.7, child: Image.network('https://i.ibb.co/D9Sj6WR/image.png', fit: BoxFit.cover))),
              SizedBox(height: 30,),
              Text("Savor the Aromas: Esquisite Exotic Spice Infusion Rice Bowl", style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),),
              SizedBox(height: 7,),
              Row(
                children: [
                  Text("By ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600),),
                  Text("Anindya Rahma", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w600),)
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWithIcon(icon: Icon(Icons.alarm), text: "15 Mins",),
                  TextWithIcon(icon: Icon(Icons.rice_bowl_outlined), text: "21 Ingredients",),
                  TextWithIcon(icon: Icon(Icons.soup_kitchen_outlined), text: "2 Servings",),
                ],
              ),
              SizedBox(height: 10,),
              Divider(),
            ]
          ),
        ),
      ),
    );
  }
}

class TextWithIcon extends StatelessWidget {
  final Icon icon;
  final String text;

  const TextWithIcon({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        this.icon,
        SizedBox(width: 10,),
        Text(
          this.text,
          style: TextStyle(color: Colors.black)
        )
      ]
    );
  }
}

