import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class HappinessChart extends StatelessWidget {
  const HappinessChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OneDayChart(rate: 100, day: "Sun"),
              OneDayChart(rate: 35, day: "Mon"),
              OneDayChart(rate: 45, day: "Tue"),
              OneDayChart(rate: 25, day: "Wed"),
              OneDayChart(rate: 70, day: "Thu"),
              OneDayChart(rate: 60, day: "Fri"),
              OneDayChart(rate: 100, day: "Sat"),
            ],
          ),
        ),
      ),
    );
  }
}

class OneDayChart extends StatelessWidget {
  final double rate;
  final String day;



  const OneDayChart({required this.rate, required this.day});

  @override
  Widget build(BuildContext context) {
    Color chartColor;

    if (rate >= 85 && rate <= 100) {
      chartColor = Colors.green;
    }
    else if (rate >= 65 && rate <= 84) {
      chartColor = Colors.orange;
    }
    else if (rate >= 45 && rate <= 64) {
      chartColor = Colors.deepPurple;
    }
    else if (rate >= 25 && rate <= 44) {
      chartColor = Colors.purple;
    }
    else {
      chartColor = Colors.red;
    }
    return SizedBox(
      width: 30,
      height: 220,
      child: FadeInUp(
        duration: Duration(milliseconds: 500 + (this.rate).toInt() * 5),
        delay: Duration(milliseconds: 300 - (this.rate).toInt() * 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(children: [
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Container(
                  width: 30,
                  height: 180 * (this.rate / 100),
                  alignment: Alignment.bottomCenter,
                  decoration: BoxDecoration(
                      color: chartColor.withOpacity(0.3),
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(30))),
                ),
              ),
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                    color: chartColor, borderRadius: BorderRadius.circular(30)),
                child: Icon(Icons.face),
              ),
            ]),
            SizedBox(height: 8,),
            Text(this.day, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600))
          ],
        ),
      ),
    );
  }
}
