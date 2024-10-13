import 'package:flutter/material.dart';
import 'package:sdd_design/constants.dart';
import 'package:sdd_design/size_config.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  AppBarWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(top: SizeConfig.height(context, 0.03)),
          width: SizeConfig.width(context, 1),
          height: SizeConfig.height(context, 0.15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(SizeConfig.width(context, 0.5)),
              bottomRight: Radius.circular(SizeConfig.width(context, 0.5)),
            ),
            gradient: GlobalConstants.appbarGradient,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(width: SizeConfig.width(context, 0.04),),
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
              SizedBox(width: SizeConfig.width(context, 0.13),),

              Text(
                title,
                style: TextStyle(
                    fontSize: SizeConfig.width(context, 0.06),
                    fontWeight: FontWeight.w400,
                    color: Colors.black,
                    fontFamily: "JacquesFrancoisShadow"),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
