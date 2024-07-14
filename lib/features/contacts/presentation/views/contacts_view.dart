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
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(AppSizeW.s12),
              child: ElevatedButton(
                onPressed: () {
                  context.goNamed(RoutesNames.createContactRoute);
                },
                style: ButtonStyle(
                    padding: WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: AppSizeW.s12)),
                    backgroundColor: const WidgetStatePropertyAll(Colors.black),
                    shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSizeR.s8)))),
                child: Row(
                  children: [
                    Icon(Icons.add, color: Colors.white, size: AppSizeSp.s16),
                    Text(
                      "مسافر",
                      style: TextStyle(
                          fontSize: AppSizeSp.s12,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
