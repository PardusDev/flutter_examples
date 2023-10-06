import 'package:flutter/material.dart';

class WScrollableCategories extends StatefulWidget {
  const WScrollableCategories({super.key});

  @override
  State<WScrollableCategories> createState() => _WScrollableCategoriesState();
}

class _WScrollableCategoriesState extends State<WScrollableCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: SafeArea(
          child: SizedBox(
            height: 160,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 16, height: 16,), text: "Steak"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Desserts"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Breakfast"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Fast Food"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Sea Food"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Ice Cream"),
                  CategoryWithPicture(image: Image.network('https://i.hizliresim.com/p5xa13i.png', width: 32, height: 32,), text: "Drinks"),
                ],
              ),
            ),
          ),
        ),
      )
    );
  }
}

class CategoryWithPicture extends StatelessWidget {
  final Image image;
  final String text;

  const CategoryWithPicture({super.key, required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(245, 245, 245, 1.0)
            ),
            child: Center(child: SizedBox(width: 36, height: 36, child: this.image)),
          ),
          SizedBox(height: 20,),
          Text(this.text, style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),)
        ],
      ),
    );
  }
}
