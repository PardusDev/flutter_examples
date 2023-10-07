import 'package:flutter/material.dart';

class WCreditCardDropdown extends StatefulWidget {
  const WCreditCardDropdown({super.key});

  @override
  State<WCreditCardDropdown> createState() => _WCreditCardDropdownState();
}

class _WCreditCardDropdownState extends State<WCreditCardDropdown> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: SizedBox(
            height: 400,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.blueAccent.shade100),
                  borderRadius: BorderRadius.circular(20.0)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image.network('https://i.hizliresim.com/8no8q39.jpg'),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Main Account",style: TextStyle(fontWeight: FontWeight.w500),),
                              Text("\$ 4456.45",style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(Icons.keyboard_arrow_down, color: Colors.blueAccent.shade200, size: 28,),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
