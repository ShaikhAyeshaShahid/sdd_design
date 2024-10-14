import 'package:flutter/material.dart';
import 'package:sdd_design/constants.dart';
import 'package:sdd_design/size_config.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final double? height;

  AppBarWidget({required this.title, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.width(context, 1),
      height: SizeConfig.height(context, height ?? 0.18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(SizeConfig.width(context, 0.3)),
          bottomRight: Radius.circular(SizeConfig.width(context, 0.3)),
        ),
        gradient: GlobalConstants.appbarGradient,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: SizeConfig.height(context, 0.02),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_circle_left_outlined,
              color: Colors.white,
              size: SizeConfig.width(context, 0.08),
            ),
          ),
          Center(
            child: Text(
              title,
              style: TextStyle(
                  fontSize: SizeConfig.width(context, 0.05),
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                  fontFamily: "Jacques_Francois_Shadow"),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
