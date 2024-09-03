import 'package:first_app/restaurant_menu_page.dart';
import 'package:first_app/widgets/build_bodysection.dart';
import 'package:first_app/widgets/build_header_section.dart';
import 'package:flutter/material.dart';

class OffersPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
      body:  const Stack(
        children: [
          buildHeaderSection(),         
          _buildArrowBack(),
          buildBodySection(),
        ],
      ),
    );
  }

 


}

class _buildArrowBack extends StatelessWidget {
  const _buildArrowBack({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
          top: 40,
          left: 16,
          child: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        );
  }
}



 

