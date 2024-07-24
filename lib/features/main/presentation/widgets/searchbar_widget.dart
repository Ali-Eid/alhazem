import 'package:alhazem/core/constants/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../blocs/type_search_bloc/type_search_bloc.dart';

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
              // InkWell(
              //   splashColor: Colors.transparent,
              //   hoverColor: Colors.transparent,
              //   onTap: () {
              //     context.goNamed(RoutesNames.loginRoute);
              //   },
              //   child: Container(
              //     height: AppSizeW.s50,
              //     width: AppSizeW.s50,
              //     decoration: BoxDecoration(
              //         color: Colors.white,
              //         boxShadow: [
              //           BoxShadow(
              //               blurRadius: AppSizeR.s3,
              //               color: ColorManager.shadow,
              //               spreadRadius: AppSizeR.s3)
              //         ],
              //         shape: BoxShape.circle),
              //     child: Icon(Icons.person,
              //         size: AppSizeSp.s30, color: ColorManager.smokeyGrey),
              //   ),
              // ),
              // SizedBox(width: AppSizeW.s10),
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
  // final List<String> _items = ['خدماتنا', 'الطلبات', 'الزبائن'];

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
            : BlocBuilder(
                bloc: context.read<TypeSearchBloc>(),
                builder: (context, state) {
                  return Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(AppSizeR.s8),
                      boxShadow: [
                        BoxShadow(
                          color: ColorManager.shadow,
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
                          itemCount:
                              context.read<TypeSearchBloc>().typesSearch.length,
                          itemBuilder: (context, index) {
                            return Material(
                              color: Colors.transparent,
                              child: InkWell(
                                onTap: () {
                                  context.pushReplacementNamed(
                                      RoutesNames.searchRoute,
                                      pathParameters: {
                                        "key": context
                                            .read<TypeSearchBloc>()
                                            .typesSearch[index]
                                            .key,
                                        "value": searchController.text
                                      });
                                  setState(() {
                                    isShow = false;
                                  });
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(AppSizeW.s12),
                                  child: Row(
                                    children: [
                                      Text(
                                        "${context.read<TypeSearchBloc>().typesSearch[index].value}:",
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelMedium,
                                      ),
                                      SizedBox(width: AppSizeW.s4),
                                      Text(
                                        searchController.text,
                                        style: Theme.of(context)
                                            .textTheme
                                            .headlineLarge,
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
                  );
                },
              ),
        Container(
          decoration: BoxDecoration(
            color: ColorManager.white,
            borderRadius: BorderRadius.circular(AppSizeR.s8),
            boxShadow: [
              BoxShadow(
                color: ColorManager.shadow,
                spreadRadius: AppSizeR.s1,
                blurRadius: AppSizeR.s5,
              ),
            ],
          ),
          child: TextFormField(
            controller: searchController,
            style: Theme.of(context).textTheme.bodyMedium,
            decoration: InputDecoration(
              hintText: 'البحث...',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              icon: Padding(
                padding: EdgeInsetsDirectional.only(start: AppSizeW.s15),
                child: Icon(Icons.search, color: ColorManager.smokeyGrey),
              ),
              suffix: isShow || searchController.text.isNotEmpty
                  ? InkWell(
                      onTap: () {
                        setState(() {
                          searchController.clear();
                          isShow = false;
                          FocusScope.of(context).unfocus();
                        });
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s10),
                        child: Icon(
                          Icons.close,
                          size: AppSizeSp.s12,
                        ),
                      ),
                    )
                  : const SizedBox(),
              // contentPadding: EdgeInsets.symmetric(vertical: AppSizeH.s10),
            ),
          ),
        ),
      ],
    );
  }
}
