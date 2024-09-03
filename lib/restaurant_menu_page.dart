import 'package:first_app/offers_page.dart';
import 'package:first_app/restaurant_offer_page.dart';
import 'package:first_app/widgets/build_header_section.dart';
import 'package:flutter/material.dart';

class RestaurantMenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
      
        body: Stack(
        children: [
         buildHeaderSection(),
                 Positioned(
            top: 40,
            left: 16,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          _buildBodySection()])));
  }
}

class _buildBodySection extends StatelessWidget {
  const _buildBodySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      bottom: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(32.0),
          topRight: Radius.circular(32.0),
        ),
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child:
            
             Column(
    children: [
    
      Container(
       decoration: BoxDecoration(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
       ),
        padding: EdgeInsets.all(16.0),
        child: Row(
          children: [
            Image.asset('assets/images/y1.png', width: 100),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Bin Waber", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                Text("Fast food"),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.orange, size: 16),
                    Text("4.9"),
                    Text(" (200+ Ratings)"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      TabBar(
        isScrollable: true,
        labelColor: Colors.black,
        tabs: [
          Tab(text: "Offer"),
          Tab(text: "Rice"),
          Tab(text: "Pizza"),
          Tab(text: "Meals"),
          Tab(text: "Chicken"),
        ],
      ),
      Expanded(
        child: TabBarView(
          children: List.generate(5, (index) {
            return ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  child: Container(
                    height: 70,
                  decoration: BoxDecoration(
        color: Colors.orange.shade100,
                  borderRadius: BorderRadius.circular(5)
                  
                  ),
                  child: ListTile(
                      onTap: () {
            Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>RestaurantOfferPage()),
            );
          },
            leading: Image.asset('assets/images/y1.png', width: 50),
            title: Text("Pizza"),
            subtitle: Text(" description "),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("\$5.55"),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                  },
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {
                     Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>OffersPage()),
            );
                  },
                ),
              ],
            ),
          ),
    
                  ),
                );
              },
            );
          }),
        ),
      ),
    ],
            ),
          ),
        )));
  }
}
