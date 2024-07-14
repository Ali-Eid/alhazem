import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';

class SearchBarWidget extends StatelessWidget {
  final Widget view;
  const SearchBarWidget({
    super.key,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Column(
          children: [
            SizedBox(height: AppSizeH.s80),
            Expanded(child: view),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(AppSizeW.s8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: AppSizeW.s20),
              const Expanded(child: SearchItemsWidget()),
              SizedBox(width: AppSizeW.s20),
              InkWell(
                splashColor: Colors.transparent,
                hoverColor: Colors.transparent,
                onTap: () {
                  context.goNamed(RoutesNames.loginRoute);
                },
                child: Container(
                  height: AppSizeW.s50,
                  width: AppSizeW.s50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: AppSizeR.s3,
                            color: Colors.black.withOpacity(0.2),
                            spreadRadius: AppSizeR.s3)
                      ],
                      shape: BoxShape.circle),
                  child: Icon(
                    Icons.person,
                    size: AppSizeSp.s30,
                    color: Colors.grey.withOpacity(.8),
                  ),
                ),
              ),
              SizedBox(width: AppSizeW.s10),
            ],
          ),
        ),
      ],
    );
  }
}

class SearchItemsWidget extends StatefulWidget {
  const SearchItemsWidget({
    super.key,
  });

  @override
  State<SearchItemsWidget> createState() => _SearchItemsWidgetState();
}

class _SearchItemsWidgetState extends State<SearchItemsWidget> {
  final searchController = TextEditingController();
  bool isShow = false;
  final List<String> _items = ['خدماتنا', 'الطلبات', 'الزبائن'];

  @override
  void initState() {
    super.initState();
    searchController.addListener(
      () {
        if (searchController.text.isNotEmpty) {
          setState(() {
            isShow = true;
          });
        } else {
          if (searchController.text.isEmpty) {
            setState(() {
              isShow = false;
            });
          } else {
            setState(() {});
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        !isShow
            ? const SizedBox() // Hide list when empty
            : Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppSizeR.s8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      spreadRadius: AppSizeR.s3,
                      blurRadius: AppSizeR.s3,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: AppSizeH.s60),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: _items.length,
                      itemBuilder: (context, index) {
                        return Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              switch (index) {
                                case 0:
                                  context
                                      .goNamed(RoutesNames.typeServicesRoute);
                                  setState(() {
                                    isShow = false;
                                  });
                                  break;
                                case 1:
                                  context.goNamed(RoutesNames.ordersRoute);
                                  setState(() {
                                    isShow = false;
                                  });
                                  break;
                                case 2:
                                  context.goNamed(RoutesNames.contactsRoute);
                                  setState(() {
                                    isShow = false;
                                  });
                                  break;
                                default:
                                  context
                                      .goNamed(RoutesNames.typeServicesRoute);
                                  setState(() {
                                    isShow = false;
                                  });
                              }
                            },
                            child: Padding(
                              padding: EdgeInsets.all(AppSizeW.s12),
                              child: Row(
                                children: [
                                  Text(
                                    "${_items[index]}:",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    searchController.text,
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400),
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(AppSizeR.s8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: AppSizeR.s3,
                blurRadius: AppSizeR.s3,
              ),
            ],
          ),
          child: TextField(
            controller: searchController,
            decoration: InputDecoration(
              hintText: 'البحث...',
              hintStyle: const TextStyle(color: Colors.grey),
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.search, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: AppSizeH.s10),
            ),
          ),
        ),
      ],
    );
  }
}
