import 'package:bankingapp/pages/my_button.dart';
import 'package:bankingapp/pages/my_card.dart';
import 'package:bankingapp/util/my_list_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.pink,
        child: const Icon(Icons.monetization_on,
        size: 33,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey[200],
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.home,
                size: 33,
                color: Colors.pink[200],
                ),
              ),
              Container(width: 100,),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.settings,
                size: 33,
                color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            //app bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Row(
                    children: [
                      Text(
                        "My",
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        " Cards",
                        style: TextStyle(
                          fontSize: 28,
                        ),
                      ),
                    ],
                  ),

                  // plus button
                  Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            //cards

            Container(
              height: 200,
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _controller,
                children: [
                  MyCard(
                    Balance: 5250.20,
                    cardNumber: 423122894,
                    expiryMonth: 04,
                    expiryYear: 27,
                    color: Colors.deepPurple[300],
                  ),
                  MyCard(
                    Balance: 10000.20,
                    cardNumber: 298456789,
                    expiryMonth: 01,
                    expiryYear: 26,
                    color: Colors.blue[300],
                  ),
                  MyCard(
                    Balance: 15000.20,
                    cardNumber: 123456789,
                    expiryMonth: 12,
                    expiryYear: 28,
                    color: Colors.green[300],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: Colors.grey.shade800,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            //3 buttons -> send, pay + bills

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //send button
                  MyButton(
                      iconImagePath: 'lib/icons/send-money.png',
                      buttonText: 'Send'),

                  //pay button
                  MyButton(
                      iconImagePath: 'lib/icons/atm-card.png',
                      buttonText: 'Pay'),

                  //bills button
                  MyButton(
                      iconImagePath: 'lib/icons/invoice.png',
                      buttonText: 'Bills'),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),

            //columns ->stats + transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  //statistics
                  MyListTitle(
                      iconImagePath: 'lib/icons/analysis.png',
                      titleTitel: 'Statistics',
                      subtitle: 'Payment and income'),
                  MyListTitle(
                      iconImagePath: 'lib/icons/send-money.png',
                      titleTitel: 'Transaction',
                      subtitle: 'Transaction History')
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
