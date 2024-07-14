import 'package:alhazem/features/home/presentation/views/home_view.dart';
import 'package:alhazem/features/main/presentation/widgets/side_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../responsive.dart';
import '../widgets/searchbar_widget.dart';

class MainView extends StatefulWidget {
  final Widget child;
  const MainView({super.key, required this.child});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Expanded(
            child: SideMenuWidget(),
          ),
          Expanded(
            flex: 6,
            child: SearchBarWidget(
              view: widget.child,
            ),
          ),
        ],
      ),
    );
  }
}
