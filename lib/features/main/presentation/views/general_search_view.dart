import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/main/presentation/blocs/general_search_bloc/general_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../contacts/presentation/views/contacts_view.dart';
import '../../../orders/presentation/widgets/order_item_widget.dart';
import '../../../services/presentation/views/types_services_view.dart';
import '../../../services/presentation/widgets/lead_status_widget.dart';
import '../../../services/presentation/widgets/service_item_widget.dart';

class GeneralSearchView extends StatefulWidget {
  final String filter;
  final String value;
  const GeneralSearchView(
      {super.key, required this.filter, required this.value});

  @override
  State<GeneralSearchView> createState() => _GeneralSearchViewState();
}

class _GeneralSearchViewState extends State<GeneralSearchView> {
  late GeneralSearchBloc generalSearchBloc;
  int selectedPageNumber = 1;

  @override
  void initState() {
    generalSearchBloc = instance<GeneralSearchBloc>()
      ..add(GeneralSearchEvent.generalSearch(
          type: widget.filter, value: widget.value, page: selectedPageNumber));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    generalSearchBloc.add(GeneralSearchEvent.generalSearch(
        type: widget.filter, value: widget.value, page: selectedPageNumber));
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(widget.value),
      ),
      body: BlocBuilder(
        bloc: generalSearchBloc,
        builder: (context, GeneralSearchState state) {
          return state.maybeMap(
            loadedSearchOrders: (value) {
              return value.orders.data.isEmpty
                  ? Center(
                      child: EmptyWidget(
                        iconData: Icons.arrow_circle_left_outlined,
                        title: "لا يوجد بيانات",
                        subTitle: "الذهاب لصفحة الطلبات",
                        onPressed: () {
                          context.goNamed(RoutesNames.ordersRoute);
                        },
                      ),
                    )
                  : Column(
                      children: [
                        SizedBox(height: AppSizeH.s15),
                        Expanded(
                          child: GridView.builder(
                            itemCount: value.orders.data.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 4),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.all(AppSizeW.s8),
                                child: OrderItemWidget(
                                  model: value.orders.data[index],
                                ),
                              );
                            },
                          ),
                        ),
                        BlocBuilder(
                          bloc: generalSearchBloc,
                          builder: (context, GeneralSearchState state) {
                            return state.maybeMap(
                              loading: (value) {
                                return const SizedBox();
                              },
                              orElse: () {
                                return generalSearchBloc.totalPages != null &&
                                        generalSearchBloc.totalCounts != 0
                                    ? NumberPagination(
                                        onPageChanged: (int pageNumber) {
                                          setState(() {
                                            selectedPageNumber = pageNumber;
                                          });
                                          generalSearchBloc.add(
                                              GeneralSearchEvent.generalSearch(
                                                  type: widget.filter,
                                                  value: widget.value,
                                                  page: selectedPageNumber));
                                        },
                                        groupSpacing: AppSizeW.s30,
                                        iconNext: Icon(
                                            Icons.arrow_forward_ios_rounded,
                                            size: AppSizeSp.s15),
                                        iconPrevious: Icon(
                                            Icons.arrow_back_ios_new_rounded,
                                            size: AppSizeSp.s15),
                                        pageTotal:
                                            generalSearchBloc.totalPages ?? 1,
                                        pageInit:
                                            selectedPageNumber, // picked number when init page
                                        colorPrimary: ColorManager.primary,
                                        colorSub: ColorManager.white,
                                        buttonElevation: AppSizeR.s3,
                                        fontSize: AppSizeSp.s14,
                                      )
                                    : const SizedBox();
                              },
                            );
                          },
                        ),
                      ],
                    );
            },
            loadedSearchServices: (value) {
              return value.services.data.isEmpty
                  ? Center(
                      child: EmptyWidget(
                        iconData: Icons.arrow_circle_left_outlined,
                        title: "لا يوجد بيانات",
                        subTitle: "الذهاب لصفحة الخدمات",
                        onPressed: () {
                          context.goNamed(RoutesNames.typeServicesRoute);
                        },
                      ),
                    )
                  : Column(children: [
                      Expanded(
                          child: GridView.builder(
                        padding: EdgeInsets.all(AppSizeW.s15),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: AppSizeW.s13,
                            mainAxisSpacing: AppSizeH.s15,
                            crossAxisCount: 5),
                        itemCount: value.services.data.length,
                        itemBuilder: (context, index) {
                          return ServiceItemWidget(
                            model: value.services.data[index],
                          );
                        },
                      )),
                      BlocBuilder(
                        bloc: generalSearchBloc,
                        builder: (context, GeneralSearchState state) {
                          return generalSearchBloc.totalPages != null &&
                                  generalSearchBloc.totalCounts != 0
                              ? NumberPagination(
                                  onPageChanged: (int pageNumber) {
                                    //To optimize further, use a package that supports partial updates instead of setState (e.g. riverpod)
                                    setState(() {
                                      selectedPageNumber = pageNumber;
                                    });
                                    generalSearchBloc.add(
                                        GeneralSearchEvent.generalSearch(
                                            type: widget.filter,
                                            value: widget.value,
                                            page: selectedPageNumber));
                                  },
                                  groupSpacing: AppSizeW.s30,
                                  iconNext: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: AppSizeSp.s15),
                                  iconPrevious: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      size: AppSizeSp.s15),
                                  pageTotal: generalSearchBloc.totalPages ?? 1,
                                  pageInit:
                                      selectedPageNumber, // picked number when init page
                                  colorPrimary: ColorManager.primary,
                                  colorSub: ColorManager.white,
                                  buttonElevation: AppSizeR.s3,
                                  fontSize: AppSizeSp.s14,
                                )
                              : const SizedBox();
                        },
                      ),
                    ]);
            },
            loadedSearchContacts: (value) {
              return value.contacts.data.isEmpty
                  ? Center(
                      child: EmptyWidget(
                        iconData: Icons.arrow_circle_left_outlined,
                        title: "لا يوجد بيانات",
                        subTitle: "الذهاب لصفحة الزبائن",
                        onPressed: () {
                          context.goNamed(RoutesNames.contactsRoute);
                        },
                      ),
                    )
                  : Column(children: [
                      Expanded(
                          child: GridView.builder(
                        padding: EdgeInsets.all(AppSizeW.s15),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisSpacing: AppSizeW.s13,
                            mainAxisSpacing: AppSizeH.s15,
                            crossAxisCount: 5),
                        itemCount: value.contacts.data.length,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {
                              context.goNamed(RoutesNames.contactDetailsRoute,
                                  pathParameters: {
                                    "id": "${value.contacts.data[index].id}"
                                  });
                            },
                            child: ContactItemWidget(
                              model: value.contacts.data[index],
                            ),
                          );
                        },
                      )),
                      BlocBuilder(
                        bloc: generalSearchBloc,
                        builder: (context, GeneralSearchState state) {
                          return generalSearchBloc.totalPages != null &&
                                  generalSearchBloc.totalCounts != 0
                              ? NumberPagination(
                                  onPageChanged: (int pageNumber) {
                                    //To optimize further, use a package that supports partial updates instead of setState (e.g. riverpod)
                                    setState(() {
                                      selectedPageNumber = pageNumber;
                                    });
                                    generalSearchBloc.add(
                                        GeneralSearchEvent.generalSearch(
                                            type: widget.filter,
                                            value: widget.value,
                                            page: selectedPageNumber));
                                  },
                                  groupSpacing: AppSizeW.s30,
                                  iconNext: Icon(
                                      Icons.arrow_forward_ios_rounded,
                                      size: AppSizeSp.s15),
                                  iconPrevious: Icon(
                                      Icons.arrow_back_ios_new_rounded,
                                      size: AppSizeSp.s15),
                                  pageTotal: generalSearchBloc.totalPages ?? 1,
                                  pageInit:
                                      selectedPageNumber, // picked number when init page
                                  colorPrimary: ColorManager.primary,
                                  colorSub: ColorManager.white,
                                  buttonElevation: AppSizeR.s3,
                                  fontSize: AppSizeSp.s14,
                                )
                              : const SizedBox();
                        },
                      ),
                    ]);
            },
            loading: (value) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            },
            orElse: () {
              return const SizedBox();
            },
          );
        },
      ),
    );
  }
}
