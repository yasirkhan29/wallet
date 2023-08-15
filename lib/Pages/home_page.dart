import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/Pages/my_buttom.dart';
import 'package:wallet/Pages/my_card.dart';
import 'package:wallet/Pages/mylist.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // app bar
              Padding(
                padding: const EdgeInsets.all(25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Text(
                        "My",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Text(
                        "Card",
                        style: TextStyle(fontSize: 26),
                      ),
                    ]),
                    // plus icon
                    Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add)),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              //cards
              Container(
                height: 200,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      balance: 5.02447,
                      cardNumber: 124643,
                      expiryMonth: 10,
                      expiryYear: 13,
                      Color: Colors.deepPurple[400],
                    ),
                    MyCard(
                      balance: 4.02447,
                      cardNumber: 24643,
                      expiryMonth: 1,
                      expiryYear: 7,
                      Color: Colors.blue[400],
                    ),
                    MyCard(
                      balance: 6.02447,
                      cardNumber: 4643,
                      expiryMonth: 12,
                      expiryYear: 20,
                      Color: Colors.green[400],
                    ),
                    MyCard(
                      balance: 8.02447,
                      cardNumber: 1234643,
                      expiryMonth: 8,
                      expiryYear: 3,
                      Color: Colors.orange[400],
                    ),
                    MyCard(
                      balance: 1.02447,
                      cardNumber: 2357923,
                      expiryMonth: 4,
                      expiryYear: 13,
                      Color: Colors.pink[400],
                    ),
                  ],
                ),
              ),
              ///smoth page indecator
              SizedBox(height: 18),
              SmoothPageIndicator(
                  controller: _controller,
                  count: 5,
                  effect: ExpandingDotsEffect(
                    activeDotColor: Colors.deepPurple,
                    dotHeight: 10,
                    dotColor: Colors.white,
                    dotWidth: 10,
                  )),
              SizedBox(height: 18),
              // 3 buttons -> send + pay + bills
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: MyBottom(
                        iconImage: 'images/send_money.png', buttomText: "Send"),
                  ),
                  MyBottom(iconImage: 'images/credit.png', buttomText: "pay"),
                  MyBottom(iconImage: 'images/bill.png', buttomText: "Bill"),
                ],
              ),

              // column -> stats + transactions

              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Mylist(
                      imagess: 'images/statistic.png',
                      name: 'Statistic',
                      sname: 'Payment and income',
                    ),
                    Mylist(
                      imagess: 'images/transection.png',
                      name: 'Transection',
                      sname: 'Payment and transection',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
