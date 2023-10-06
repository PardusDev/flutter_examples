import 'package:flutter/material.dart';

class BottomMenuExample extends StatefulWidget {
  const BottomMenuExample({super.key});

  @override
  State<BottomMenuExample> createState() => _BottomMenuExampleState();
}

class _BottomMenuExampleState extends State<BottomMenuExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Modal Example", style: TextStyle(color: Colors.black)),
                  Text("example",
                      style: TextStyle(color: Colors.grey.shade600, fontSize: 16))
                ],
              ),
            )),
        body: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) {
                            return Container(
                                padding: EdgeInsets.only(bottom: 20),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                        leading: Icon(Icons.link),
                                        title: Text("Copy Link"),
                                        onTap: () {
                                          Navigator.pop(context);
                                        }),
                                    ListTile(
                                        leading: Icon(Icons.share),
                                        title: Text("Share"),
                                        onTap: () {
                                          Navigator.pop(context);
                                        }),
                                    Divider(
                                        height: 1, color: Colors.grey.shade400),
                                    ListTile(
                                        leading: Icon(Icons.delete,
                                            color: Colors.red.shade500),
                                        title: Text("Delete"),
                                        onTap: () {
                                          Navigator.pop(context);
                                          final snackBar = SnackBar(
                                              content:
                                                  Text("Removed from list"),
                                              action: SnackBarAction(
                                                label: "Undo",
                                                onPressed: () {},
                                              ));

                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(snackBar);
                                        })
                                  ],
                                ));
                          });
                    },
                    child: Text("Show Bottom Menu"))
              ],
            )));
  }
}
