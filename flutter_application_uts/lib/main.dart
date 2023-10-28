import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {},
          child: const Icon(
            Icons.qr_code,
            color: Colors.white,
            size: 48,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.donut_small), label: 'Payment'),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
            BottomNavigationBarItem(icon: Icon(Icons.account_box), label: 'Account'),
          ],
        ),
        backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Image.network(
                      'https://1.bp.blogspot.com/-GjCpjdW8Hrs/XkXUvE0RseI/AAAAAAAABmk/u5e1zr7RGHQN2TFwPu1IoN8QJBtwXLH5QCLcBGAsYHQ/s1600/Logo%2BLink%2BAja%2521.png',
                      width: 70,
                      height: 70,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        color: const Color(0xFFF0E9E9),
                        padding: const EdgeInsets.all(3),
                        margin: const EdgeInsets.only(right: 10),
                        child: const ButtonBar(
                          children: [
                            Icon(Icons.attach_money),
                          ],
                        ),
                      ),
                      Container(
                        color: const Color(0xFFF0E9E9),
                        padding: const EdgeInsets.all(3),
                        child: const ButtonBar(
                          children: [
                            Icon(Icons.favorite),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
// untuk background box decor saya menggunakan gambar
            Container(
              padding: EdgeInsets.all(32.0),
              //margin: EdgeInsets.all(50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage('assets/1.2.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              width: 380,
              height: 180,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'HI,Sofyan Noor Arief,S.st , M.KOM',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 16.0),
                        padding: EdgeInsets.all(16.0),
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Your Balance',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp 10.000',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(Icons.arrow_right),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(16.0),
                        height: 80,
                        width: 150,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Bonus Balance',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Rp 0',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Icon(Icons.arrow_right),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 70,
              margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomChip(icon: Icons.credit_card, label: 'TopUp'),
                  CustomChip(icon: Icons.atm, label: 'Send Money'),
                  CustomChip(
                      icon: Icons.airplane_ticket_outlined,
                      label: 'Ticket Code'),
                  CustomChip(icon: Icons.widgets, label: 'See All'),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomChip(
                      backgroundColor: Colors.transparent,
                      icon: Icons.phone_android_outlined,
                      label: 'Pulsa/Data'),
                  CustomChip(
                      backgroundColor: Colors.transparent,
                      icon: Icons.electric_bolt,
                      label: 'Electricity'),
                  CustomChip(
                      backgroundColor: Colors.transparent,
                      icon: Icons.local_hospital,
                      label: 'BPJS'),
                  CustomChip(
                      backgroundColor: Colors.transparent,
                      icon: Icons.gamepad,
                      label: 'MGames'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomChip(
                    backgroundColor: Colors.transparent,
                    icon: Icons.tv,
                    label: 'Cable TV\n&Internet'),
                CustomChip(
                    backgroundColor: Colors.transparent,
                    icon: Icons.water,
                    label: 'PDAM'),
                CustomChip(
                    backgroundColor: Colors.transparent,
                    icon: Icons.card_membership,
                    label: 'Kartu Uang\nElektronik'),
                CustomChip(
                    backgroundColor: Colors.transparent,
                    icon: Icons.more,
                    label: 'More'),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 32),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 150.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  enlargeFactor: 0.2,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Color(0xffff8f4f - i * 100),
                          borderRadius: const BorderRadius.all(
                            Radius.circular(8),
                          ),
                        ),
                        child: const Text(''),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomChip extends StatelessWidget {
  const CustomChip({
    super.key,
    required this.icon,
    required this.label,
    this.iconSize = 36,
    this.backgroundColor = Colors.white,
    this.spacing = 0,
  });
  final IconData icon;
  final String label;
  final double iconSize;
  final Color backgroundColor;
  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: backgroundColor,
      child: InkWell(
        splashColor: Colors.grey[300],
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              icon,
              size: iconSize,
            ),
            SizedBox(height: spacing),
            Text(label),
          ],
        ),
      ),
    );
  }
}
