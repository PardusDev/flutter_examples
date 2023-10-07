import 'package:flutter/material.dart';
import 'package:flutter_examples/pages/ai_information_screen.dart';
import 'package:flutter_examples/pages/bottom_menu.dart';
import 'package:flutter_examples/pages/bottom_navbar.dart';
import 'package:flutter_examples/pages/food_recipe_page.dart';
import 'package:flutter_examples/pages/mucicy_welcome_screen.dart';
import 'package:flutter_examples/pages/w_credit_card_dropdown.dart';
import 'package:flutter_examples/pages/w_happiness_chart.dart';
import 'package:flutter_examples/pages/login_page_vpn.dart';
import 'package:flutter_examples/pages/login_page_walking_anim.dart';
import 'package:flutter_examples/pages/meditation_app_home.dart';
import 'package:flutter_examples/pages/multiple_selection.dart';
import 'package:flutter_examples/pages/tea_page.dart';
import 'package:flutter_examples/pages/w_menu_list.dart';
import 'package:flutter_examples/pages/w_pricing_table.dart';
import 'package:flutter_examples/pages/w_scrollable_categories.dart';
import 'package:flutter_examples/pages/w_transaction.dart';

import 'class/NavigatorItem.dart';

List<NavigatorItem> items = [
  NavigatorItem('Bottom Menu', MaterialPageRoute(builder: (context) => BottomMenuExample())),
  NavigatorItem('Login Page', MaterialPageRoute(builder: (context) => LoginPageWalkingAnimation())),
  NavigatorItem('Login Page VPN', MaterialPageRoute(builder: (context) => LoginPageVPN())),
  NavigatorItem('Tea Page', MaterialPageRoute(builder: (context) => TeaPage())),
  NavigatorItem('Multiple Selection', MaterialPageRoute(builder: (context) => MultipleSelectionPage())),
  NavigatorItem('Meditation App', MaterialPageRoute(builder: (context) => MeditationApp())),
  NavigatorItem('WHappiness Chart', MaterialPageRoute(builder: (context) => HappinessChart())),
  NavigatorItem('WMenu List', MaterialPageRoute(builder: (context) => WMenuList())),
  NavigatorItem('WPricing Table', MaterialPageRoute(builder: (context) => WPricingTable())),
  NavigatorItem('WTransaction', MaterialPageRoute(builder: (context) => WTransaction())),
  NavigatorItem('AI Information Screen', MaterialPageRoute(builder: (context) => AIInformationScreen())),
  NavigatorItem('Food Recipe Page', MaterialPageRoute(builder: (context) => FoodRecipePage())),
  NavigatorItem('Scrollable Categories', MaterialPageRoute(builder: (context) => WScrollableCategories())),
  NavigatorItem('Bottom Navbar', MaterialPageRoute(builder: (context) => BottomNavbar())),
  NavigatorItem('Mucicy Welcome Screen', MaterialPageRoute(builder: (context) => MucicyWelcomeScreen())),
  NavigatorItem('Credit Cart Dropdown', MaterialPageRoute(builder: (context) => WCreditCardDropdown())),
];
void main() => runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index].name),
              onTap: () {
                Navigator.push(context, items[index].route);
              }
            );
          },
        )
      ),
    )
);
