import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_uts/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class KeDua extends StatelessWidget {
  const KeDua({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
          currentIndex: 1,
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.red,
          showUnselectedLabels: true,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.house), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
            BottomNavigationBarItem(
                icon: Icon(Icons.donut_small), label: 'Payment'),
            BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_box), label: 'Account'),
          ],
          onTap: (value) {
            if (value == 0)
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) {
                return Pertama();
              }));
          },
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text('Transaction History',style: TextStyle(color: Colors.black),),
          bottom: TabBar(
            labelColor: Colors.black,
            indicatorColor: Colors.red,
            tabs: [
              Tab(
                
                text: 'Pending',
              ),
              Tab(
                text: 'Done',
              )
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(child: Text('All Transaction is Completed!')),
          Center(child: Text('All Transaction is Completed!'))
        ]),
      ),
    );
  }
}
