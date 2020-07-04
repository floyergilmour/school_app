import 'package:flutter/material.dart';

import 'supplierCards.dart';

class FindSuppliers extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return
      DefaultTabController(
        length: 6,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.store, color: Colors.white,)),
                Tab(icon: Icon(Icons.local_florist, color: Colors.white)),
                Tab(icon: Icon(Icons.local_hotel, color: Colors.white )),
                Tab(icon: Icon(Icons.local_shipping, color: Colors.white )),
                Tab(icon: Icon(Icons.mail_outline, color: Colors.white  )),
                Tab(icon: Icon(Icons.restaurant_menu, color: Colors.white  )),
              ],
            ),
            title: Text('Suppliers'),
          ),
          body: TabBarView(
            children: [
              CustomListViewBuilder(),
              CustomListViewBuilder(),//Icon(Icons.local_florist),
              CustomListViewBuilder(),//Icon(Icons.local_hotel),
              CustomListViewBuilder(),//Icon(Icons.local_shipping),
              CustomListViewBuilder(),//Icon(Icons.mail_outline),
              CustomListViewBuilder(),//Icon(Icons.restaurant_menu),
            ],
          ),
        ),
      );
  }
}