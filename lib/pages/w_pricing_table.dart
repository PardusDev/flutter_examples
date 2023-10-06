import 'package:flutter/material.dart';

class WPricingTable extends StatelessWidget {
  const WPricingTable({super.key});
  static const rowSpacer=TableRow(
      children: [
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 12,
        )
      ]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Table(
              columnWidths: <int, TableColumnWidth>{
                0: FlexColumnWidth(2.0),
                1: FlexColumnWidth(0.5),
                2: FlexColumnWidth(0.8)
              },
              children: [
                TableRow(
                  children: [
                    Text("WHAT'S INCLUDED", style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),),
                    Text("FREE", textAlign: TextAlign.center, style: TextStyle(color: Colors.grey, fontSize: 16, fontWeight: FontWeight.w500),),
                    Text("PREMIUM", textAlign: TextAlign.center, style: TextStyle(color: Colors.purple, fontSize: 16, fontWeight: FontWeight.w500),),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.favorite_border),
                        SizedBox(width: 4,),
                        Text("See Who Liked You", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star_border),
                        SizedBox(width: 4,),
                        Text("Unlimited Likes", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.fast_rewind_outlined),
                        SizedBox(width: 4,),
                        Text("Unlimited Rewinds", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.bolt),
                        SizedBox(width: 4,),
                        Text("1 free Boost Per Month", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.block),
                        SizedBox(width: 4,),
                        Text("Hide Ads", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
                rowSpacer,
                TableRow(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.remove_red_eye_outlined),
                        SizedBox(width: 4,),
                        Text("Browse Profiles Privately", style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
                      ],
                    ),
                    Icon(Icons.minimize, color: Colors.grey, size: 18),
                    Icon(Icons.done, color: Colors.purple, size: 18),
                  ],
                ),
              ],
            ),
          ),
        ),
      )
    );
  }
}
