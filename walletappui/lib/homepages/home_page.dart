// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:walletappui/util/my_cards.dart';
import 'package:walletappui/util/my_icons.dart';
import 'package:walletappui/util/my_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    //page indicator
    final _controller = PageController();
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.monetization_on,
            size: 54,
            color: Colors.green,
          ),
          onPressed: () {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color: Colors.black,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(Icons.home, size: 44, color: Colors.white),
              Icon(Icons.settings, size: 44, color: Colors.white),
            ],
          ),
        ),
        backgroundColor: Colors.grey.shade300,
        body: Center(
          child: SafeArea(
            child: Column(
              children: [
                //appbar
                Padding(
                  padding: const EdgeInsets.only(top: 14, left: 24, right: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Text(
                            'My',
                            style: TextStyle(
                                fontSize: 28, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' Cards',
                            style: TextStyle(fontSize: 28),
                          ),
                        ],
                      ),
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade400,
                        ),
                        child: const Icon(
                          Icons.add,
                          size: 36,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                //Cards
                Container(
                  height: 200,
                  child: PageView(
                    controller: _controller,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      MyCards(
                          balance: 350.59,
                          cardNumber: 31450,
                          expireMonth: 05,
                          expireYear: 22,
                          color: Colors.blue),
                      MyCards(
                          balance: 10531.32,
                          cardNumber: 23125,
                          expireMonth: 02,
                          expireYear: 24,
                          color: Colors.red),
                      MyCards(
                          balance: 1820.32,
                          cardNumber: 23125,
                          expireMonth: 02,
                          expireYear: 24,
                          color: Colors.orange),
                      MyCards(
                          balance: 4212.32,
                          cardNumber: 23125,
                          expireMonth: 02,
                          expireYear: 24,
                          color: Colors.green),
                      MyCards(
                          balance: 1210.32,
                          cardNumber: 23125,
                          expireMonth: 02,
                          expireYear: 24,
                          color: Colors.lime),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: WormEffect(
                      spacing: 12, activeDotColor: Colors.grey.shade800),
                ),
                const SizedBox(
                  height: 22,
                ),
                // 3 buttons -> send,pay,bills
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      //send icon
                      MyIcon(
                          myIcon: 'lib/icons/send_money2.png',
                          myBoxColor: Colors.white,
                          iconName: 'Send'),
                      //pay icon
                      MyIcon(
                          myIcon: 'lib/icons/pay.png',
                          myBoxColor: Colors.white,
                          iconName: 'Pay'),
                      //bill icon
                      MyIcon(
                          myIcon: 'lib/icons/bills.png',
                          myBoxColor: Colors.white,
                          iconName: 'Bills')
                    ],
                  ),
                ),
                //column ->stats + transactions
                // ignore: prefer_const_literals_to_create_immutables
                Column(
                  children: const [
                    SizedBox(
                      height: 20,
                    ),
                    //statistics
                    MyTile(
                        iconPath: 'lib/icons/stat.png',
                        titleName: 'Statistics',
                        subName: 'Payments and Income'),
                    //transaction history
                    MyTile(
                        iconPath: 'lib/icons/history.png',
                        titleName: 'Transactions',
                        subName: 'Transactions History'),
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
