import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/features/services/presentation/blocs/service_bloc/service_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../../../core/app/depndency_injection.dart';
import '../widgets/service_item_widget.dart';
import 'types_services_view.dart';

class ServicesView extends StatefulWidget {
  final int typeServiceId;
  final String typeService;
  const ServicesView(
      {super.key, required this.typeServiceId, required this.typeService});

  @override
  State<ServicesView> createState() => _ServicesViewState();
}

class _ServicesViewState extends State<ServicesView> {
  late ServiceBloc serviceBloc;
  int selectedPageNumber = 1;
  @override
  void initState() {
    serviceBloc = instance<ServiceBloc>()
      ..add(ServiceEvent.getServices(
          serviceTypeId: widget.typeServiceId, page: selectedPageNumber));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.typeService),
      ),
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder(
              bloc: serviceBloc,
              builder: (context, ServiceState state) {
                return state.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  loading: (value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loadedServices: (value) {
                    return value.services.data.isEmpty
                        ? Center(
                            child: EmptyWidget(
                              title: "لا يوجد خدمات مدخلة",
                              onPressed: () {
                                serviceBloc.add(ServiceEvent.getServices(
                                    serviceTypeId: widget.typeServiceId,
                                    page: selectedPageNumber));
                              },
                            ),
                          )
                        : Column(children: [
                            Expanded(
                                child: GridView.builder(
                              padding: EdgeInsets.all(AppSizeW.s15),
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
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
                          ]);
                  },
                  error: (value) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(value.message),
                          IconButton(
                              onPressed: () {
                                serviceBloc.add(ServiceEvent.getServices(
                                    serviceTypeId: widget.typeServiceId,
                                    page: selectedPageNumber));
                              },
                              icon: const Icon(Icons.refresh))
                        ],
                      ),
                    );
                  },
                );
              },
            ),
          ),
          BlocBuilder(
            bloc: serviceBloc,
            builder: (context, ServiceState state) {
              return serviceBloc.totalPages != null &&
                      serviceBloc.totalCounts != 0
                  ? NumberPagination(
                      onPageChanged: (int pageNumber) {
                        //To optimize further, use a package that supports partial updates instead of setState (e.g. riverpod)
                        setState(() {
                          selectedPageNumber = pageNumber;
                        });
                        serviceBloc.add(ServiceEvent.getServices(
                            serviceTypeId: widget.typeServiceId,
                            page: selectedPageNumber));
                      },
                      groupSpacing: AppSizeW.s30,
                      iconNext: Icon(Icons.arrow_forward_ios_rounded,
                          size: AppSizeSp.s15),
                      iconPrevious: Icon(Icons.arrow_back_ios_new_rounded,
                          size: AppSizeSp.s15),
                      pageTotal: serviceBloc.totalPages ?? 10,
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
        ],
      ),
    );
  }
}
