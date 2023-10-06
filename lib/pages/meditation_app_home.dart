import 'package:flutter/material.dart';

class MeditationApp extends StatefulWidget {
  const MeditationApp({super.key});

  @override
  State<MeditationApp> createState() => _MeditationAppState();
}

class _MeditationAppState extends State<MeditationApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi, Sarah!",
                      style:
                          TextStyle(fontSize: 42, fontWeight: FontWeight.w500)),
                  ClipOval(
                      child: Image.network(
                    'https://images.pexels.com/photos/4959341/pexels-photo-4959341.jpeg?auto=compress&cs=tinysrgb&w=250&h=150&dpr=1',
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ))
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 30.0,
                          offset: Offset(0, 8))
                    ]),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey.shade500,
                        ),
                        hintText: "Search",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        ),
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 170,
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 30.0,
                              offset: Offset(0, 8))
                        ]

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Stress day relaxation",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade300,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 36,
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "15 min",
                                  style: TextStyle(fontSize: 12),
                                )),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 170,
                    height: 210,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 30.0,
                              offset: Offset(0, 8))
                        ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Evening Meditation to Relax",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w500)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade300,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Icon(
                                  Icons.play_arrow,
                                  size: 36,
                                ),
                              ),
                              Container(
                                width: 60,
                                height: 25,
                                decoration: BoxDecoration(
                                    color: Colors.orange.shade100,
                                    borderRadius: BorderRadius.circular(30)),
                                child: Center(
                                    child: Text(
                                  "12 min",
                                  style: TextStyle(fontSize: 12),
                                )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Featured for you", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24)),
                  TextButton(
                      onPressed: () {},
                      child: Text("See all", style: TextStyle(color: Colors.grey),),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(Colors.transparent),
                      ),
                  )
                ],
              ),
              SizedBox(height: 20,),
              Column(
                children: [
                  ListenListItem(color: Colors.orange.shade200, text: "Explore new activities",),
                  SizedBox(height: 10,),
                  ListenListItem(color: Colors.white, text: "Meditation for deep sleep"),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ListenListItem extends StatefulWidget {
  final Color color;
  final String text;

  const ListenListItem({required this.color, required this.text});

  @override
  State<ListenListItem> createState() => _ListenListItemState();
}

class _ListenListItemState extends State<ListenListItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 30.0,
                offset: Offset(0, 8))
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.text, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
                Row(
                  children: [
                    Container(
                      width: 60,
                      height: 25,
                      decoration: BoxDecoration(
                          color: widget.color == Colors.orange.shade200 ? Colors.white : Colors.orange.shade100,
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Text(
                            "10 min",
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      height: 25,
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          border: Border.all(color: widget.color == Colors.orange.shade200 ? Colors.white : Colors.grey, width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              "Evening",
                              style: TextStyle(fontSize: 12),
                            ),
                          )),
                    ),
                  ],
                )
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 55,
                height: 55,
                decoration: BoxDecoration(
                    color: widget.color == Colors.orange.shade200 ? Colors.white : Colors.orange.shade200,
                    borderRadius: BorderRadius.circular(30)),
                child: Icon(
                  Icons.play_arrow,
                  size: 36,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

