import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Map<int, String> types = {
  0: "Salary",
  1: "Transfer",
  2: "Subscription",
  3: "Food & Drink"
};

class WTransaction extends StatelessWidget {
  const WTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Transaction", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black)),
                  TextButton(onPressed: () {}, child: Text("See All", style: TextStyle(color: Colors.green, fontWeight: FontWeight.w700),))
                ],
              ),
              TransactionItem(title: "Ever", amount: 1200.25, type: 0, deposit: 1, date: DateTime.parse('2023-05-13')),
              SizedBox(height: 10,),
              TransactionItem(title: "to Syaiful Rijal", amount: 200, type: 1, deposit: 0, date: DateTime.parse('2023-05-13')),
              SizedBox(height: 10,),
              TransactionItem(title: "Spotify", amount: 12, type: 2, deposit: 0, date: DateTime.parse('2023-05-13')),
              SizedBox(height: 10,),
              TransactionItem(title: "Mabok", amount: 2012, type: 3, deposit: 0, date: DateTime.parse('2023-05-13')),
            ],
          ),
        ),
      ),
    );
  }
}

class TransactionItem extends StatelessWidget {
  final String title;
  final double amount;
  final int type;
  final int deposit;
  final DateTime date;

  const TransactionItem({required this.title, required this.amount, required this.deposit, required this.type, required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 20.0,
            offset: Offset(0, 2),
          )
        ]
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.monetization_on_sharp, color: Colors.green, size: 64,),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(this.title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Text(types[this.type]! + " ", style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.grey),),
                            Icon(Icons.circle, size: 4, color: Colors.grey),
                            Text(" " + DateFormat.yMMMMd().format(this.date), style: TextStyle(fontWeight: FontWeight.w600, fontSize: 10, color: Colors.grey)),
                          ],
                        )
                      ],
                    ),
                  ),
                  Text((this.deposit == 1 ? "+" : "-") + NumberFormat.currency(locale: 'en_US', symbol: "\$" ).format(this.amount), style: TextStyle(color: this.deposit == 1 ? Colors.green : Colors.red, fontSize: 16, fontWeight: FontWeight.w600),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
