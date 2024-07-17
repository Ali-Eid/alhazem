import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/values_manager.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TypeContactCreateWidget(
          onTap: () {
            context.goNamed(RoutesNames.createContactRoute);
          },
          title: "انشاء مسافر",
          img: ImageAssets.traveler,
        ),
        SizedBox(width: AppSizeW.s50),
        TypeContactCreateWidget(
          onTap: () {
            context.goNamed(RoutesNames.createOfficeRoute);
          },
          title: "انشاء مكتب",
          img: ImageAssets.office,
        ),
      ],
    );
  }
}

class TypeContactCreateWidget extends StatefulWidget {
  final String title;
  final String img;
  final Function()? onTap;

  const TypeContactCreateWidget(
      {super.key, required this.title, this.onTap, required this.img});

  @override
  State<TypeContactCreateWidget> createState() =>
      _TypeContactCreateWidgetState();
}

class _TypeContactCreateWidgetState extends State<TypeContactCreateWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSizeR.s15),
      onTap: widget.onTap,
      child: Padding(
        padding: EdgeInsets.all(AppSizeW.s8),
        child: Container(
          height: AppSizeH.s400,
          width: AppSizeW.s424,
          padding: EdgeInsets.all(AppSizeW.s8),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  blurRadius: AppSizeR.s3,
                  spreadRadius: AppSizeR.s3,
                  color: Colors.grey.withOpacity(.3))
            ],
            borderRadius: BorderRadius.circular(AppSizeR.s15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 3,
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(widget.img),
                          fit: BoxFit.fill,
                        ),
                        borderRadius: BorderRadius.circular(AppSizeR.s10)),
                  )),
              SizedBox(height: AppSizeH.s5),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: AppSizeH.s25),
                  Text(
                    widget.title,
                    style: Theme.of(context).textTheme.titleLarge,
                    maxLines: 2,
                  ),
                  SizedBox(height: AppSizeH.s25),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.end,
                  //   children: [
                  //     Tooltip(
                  //       message: "استعراض",
                  //       child: IconButton(
                  //         onPressed: () {},
                  //         icon: Icon(
                  //           Icons.arrow_circle_left_outlined,
                  //           color: Colors.black.withOpacity(.5),
                  //         ),
                  //       ),
                  //     ),
                  //   ],
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
