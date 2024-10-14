import 'package:flutter/material.dart';
import 'package:sdd_design/size_config.dart';
import 'package:sdd_design/widgets/appbar.dart';

import 'constants.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: GlobalConstants.backgroundGradient,
        ),
        child: Column(
          children: [
            Stack(alignment: Alignment.topCenter, children: [
              AppBarWidget(
                title: "",
                height: 0.3,
              ),
              Positioned(
                top: 50,
                child: Column(
                  children: [
                    Image.asset(
                      alignment: Alignment.bottomCenter,
                      "assets/images/edit_picture.png",
                      scale: SizeConfig.width(context, 0.004),
                    ),
                    SizedBox(
                      height: SizeConfig.height(context, 0.02),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: SizeConfig.height(context, 0.06),
                      width: SizeConfig.width(context, 0.4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          SizeConfig.width(context, 0.1),
                        ),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          // Equivalent to 90deg
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromRGBO(29, 147, 135, 0.39),
                            // rgba(29, 147, 135, 0.39)
                            Color.fromRGBO(0, 0, 0, 0.39),
                            // rgba(0, 0, 0, 0.39)
                          ],
                        ),
                      ),
                      child: Text(
                        "Edit Profile",
                        style: TextStyle(
                            fontSize: SizeConfig.width(context, 0.05),
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                            fontFamily: "Jacques_Francois_Shadow"),
                        textAlign: TextAlign.center,
                      ),
                    )
                  ],
                ),
              ),
            ]),
            SizedBox(
              height: SizeConfig.height(context, 0.02),
            ),

            Expanded(
              child: ListView(
                children: [
                  buildProfileOption('Your Disease', Icons.local_hospital),
                  buildProfileOption('Prescription', Icons.description),
                  buildProfileOption('Language', Icons.language),
                  buildProfileOption('Location', Icons.location_on),
                  buildProfileOption('Accuracy', Icons.location_searching),
                ],
              ),
            ),
            // Log out button
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xff1d4c47),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                ),
                onPressed: () {},
                child: Text(
                  'LOG OUT',
                  style: TextStyle(color: Colors.white, fontFamily: "Itlim"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Helper method to build each profile option
  Widget buildProfileOption(String title, IconData icon) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 20),
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontFamily: "Itim"),
            ),
          ),
          Icon(Icons.arrow_forward_ios, color: Colors.white),
        ],
      ),
    );
  }
}
