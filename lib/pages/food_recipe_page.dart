import 'package:flutter_swiper_view/flutter_swiper_view.dart';
import 'package:flutter/material.dart';

List<String> images = [
  'https://i.ibb.co/D9Sj6WR/image.png',
  'https://images.pexels.com/photos/4393021/pexels-photo-4393021.jpeg?auto=compress&cs=tinysrgb&w=350&h=350&dpr=1',
  'https://images.pexels.com/photos/8969237/pexels-photo-8969237.jpeg?auto=compress&cs=tinysrgb&w=350&h=350&dpr=1',
];

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
        title: Center(
            child: Text(
          "Food Recipes",
          style: TextStyle(color: Colors.black),
        )),
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
              onPressed: () {},
              icon: Icon(
                Icons.chevron_left,
                color: Colors.black,
              ),
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
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(children: [
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 250),
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.network(images[index], fit: BoxFit.cover,);
                },
                itemCount: images.length,
                pagination: SwiperPagination(
                  builder: DotSwiperPaginationBuilder(
                    color: Colors.white38,
                    activeColor: Colors.white
                  )
                ),
                viewportFraction: 0.82,
                scale: 0.85,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Savor the Aromas: Esquisite Exotic Spice Infusion Rice Bowl",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 7,
            ),
            Row(
              children: [
                Text(
                  "By ",
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Anindya Rahma",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWithIcon(
                  icon: Icon(Icons.alarm),
                  text: "15 Mins",
                ),
                TextWithIcon(
                  icon: Icon(Icons.rice_bowl_outlined),
                  text: "21 Ingredients",
                ),
                TextWithIcon(
                  icon: Icon(Icons.soup_kitchen_outlined),
                  text: "2 Servings",
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(),
            SizedBox(height: 15),
            Text(
              "This dish features fragrant jasmine rice meticulously infused with a blend of rare and aromatic spices. This dish features fragrant jasmine rice meticulously",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                height: 50,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Color.fromRGBO(34, 34, 34, 1.0),
                child: Text(
                  "Start Cooking",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                onPressed: () {},
              ),
            )
          ]),
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
    return Row(children: [
      this.icon,
      SizedBox(
        width: 10,
      ),
      Text(this.text, style: TextStyle(color: Colors.black))
    ]);
  }
}
