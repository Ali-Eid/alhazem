import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/contacts/presentation/blocs/lead_contact_bloc/lead_contact_bloc.dart';
import 'package:alhazem/features/orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import 'package:alhazem/features/orders/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import 'package:alhazem/features/services/domain/models/service_details_model.dart/service_details_model.dart';
import 'package:alhazem/features/services/presentation/blocs/check_price_bloc/check_price_bloc.dart';
import 'package:alhazem/features/services/presentation/blocs/service_bloc/service_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/widgets/alert_dialog_widget.dart';
import '../../../contacts/presentation/widgets/drop_down_widget.dart';
import '../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import '../widgets/create_order_dialog_widget.dart';
import '../widgets/service_details_widget.dart';
import '../widgets/service_requirments_widget.dart';
import '../widgets/variants_service_widget.dart';

class ServiceDetailsView extends StatefulWidget {
  final int serviceId;
  const ServiceDetailsView({super.key, required this.serviceId});

  @override
  State<ServiceDetailsView> createState() => _ServiceDetailsViewState();
}

class _ServiceDetailsViewState extends State<ServiceDetailsView> {
  late ServiceBloc serviceBloc;
  late CheckPriceBloc checkPriceBloc;
  late CreateOrderBloc createOrderBloc;

  @override
  void initState() {
    checkPriceBloc = instance<CheckPriceBloc>();
    serviceBloc = instance<ServiceBloc>()
      ..add(ServiceEvent.getServiceDetails(
          serviceId: widget.serviceId,
          leadId: context.read<LeadContactBloc>().leadId ?? 0));
    createOrderBloc = instance<CreateOrderBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: createOrderBloc,
      listener: (context, CreateOrderState state) {
        state.mapOrNull(
          success: (value) {
            showToast(context: context, message: value.success.message);
          },
          error: (value) {
            showToast(
                context: context,
                message: value.message,
                type: ToastificationType.error);
          },
        );
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [
            BlocBuilder(
              bloc: serviceBloc,
              builder: (context, ServiceState state) {
                return state.maybeMap(
                  loadedServiceDetails: (value) {
                    return BlocBuilder(
                        bloc: createOrderBloc,
                        builder: (context, CreateOrderState stateOrder) {
                          return stateOrder.maybeMap(
                            orElse: () {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s12),
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return MultiBlocProvider(
                                            providers: [
                                              BlocProvider.value(
                                                  value: createOrderBloc),
                                              BlocProvider.value(
                                                  value: checkPriceBloc),
                                            ],
                                            child: AlertDialogWidget(
                                              title: "انشاء الطلب",
                                              // insetPadding:
                                              //     EdgeInsets.symmetric(
                                              //   vertical: AppSizeH.s150,
                                              // ),
                                              content: SizedBox(
                                                width: AppSizeW.s424,
                                                height: AppSizeH.s425,
                                                child: BlocProvider(
                                                  create: (context) => instance<
                                                      InputValueCreateOrderCubit>(),
                                                  child:
                                                      CreateOrderDialogWidget(
                                                    serviceId: widget.serviceId,
                                                  ),
                                                ),
                                              ),
                                            ));
                                      },
                                    );
                                  },
                                  label: const Text("انشاء طلب "),
                                  icon: const Icon(Icons.add),
                                ),
                              );
                            },
                          );
                        });
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            )
          ],
        ),
        body: BlocBuilder(
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
              loadedServiceDetails: (value) {
                if (checkPriceBloc.variantsValue.isEmpty) {
                  checkPriceBloc.price = value.services.data.first.price;
                  checkPriceBloc.variantsValue.clear();
                  for (var element in value.services.data.first.variants) {
                    checkPriceBloc.variantsValue.add(element.values.first);
                  }
                  checkPriceBloc.add(const CheckPriceEvent.checkPriceInitial());
                }
                return SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(AppSizeW.s15),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(AppSizeW.s15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(AppSizeR.s15),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorManager.shadow,
                                    blurRadius: AppSizeR.s10)
                              ]),
                          child: Column(
                            children: [
                              ServiceDetailsWidget(
                                name: "الاسم",
                                value: value.services.data.first.name,
                              ),
                              Divider(
                                endIndent: AppSizeW.s40,
                                indent: AppSizeW.s40,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "السعر:",
                                    style:
                                        Theme.of(context).textTheme.titleMedium,
                                  ),
                                  SizedBox(width: AppSizeW.s5),
                                  BlocBuilder(
                                    bloc: checkPriceBloc,
                                    builder: (context, CheckPriceState state) {
                                      return state.maybeMap(
                                        loaded: (value) {
                                          return Expanded(
                                            child: Text(
                                              value.price.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          );
                                        },
                                        orElse: () {
                                          return Expanded(
                                            child: Text(
                                              checkPriceBloc.price.toString(),
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .labelSmall,
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  )
                                ],
                              ),
                              Divider(
                                endIndent: AppSizeW.s40,
                                indent: AppSizeW.s40,
                              ),
                              ServiceDetailsWidget(
                                name: "الوجهة",
                                value: value.services.data.first.country,
                              ),
                              Divider(
                                endIndent: AppSizeW.s40,
                                indent: AppSizeW.s40,
                              ),
                              ServiceDetailsWidget(
                                name: "نوع الرحلة",
                                value: value.services.data.first.type,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: AppSizeH.s10),
                        ServiceRequirmentsWidget(
                          title: "الأوراق المطلوبة",
                          titlePrice: "التكلفة",
                          model: value.services.data.first,
                        ),
                        SizedBox(height: AppSizeH.s10),
                        Container(
                          padding: EdgeInsets.all(AppSizeW.s15),
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(AppSizeR.s15),
                              boxShadow: [
                                BoxShadow(
                                    color: ColorManager.shadow,
                                    blurRadius: AppSizeR.s10)
                              ]),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      "خدمات اضافية",
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: AppSizeH.s10),
                              BlocProvider.value(
                                value: checkPriceBloc,
                                child: VariantsServiceWidget(
                                  variants: value.services.data.first.variants,
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              error: (value) {
                return Center(
                  child: Column(
                    children: [
                      Text(value.message),
                      IconButton(
                          onPressed: () {
                            serviceBloc.add(ServiceEvent.getServiceDetails(
                                serviceId: widget.serviceId,
                                leadId:
                                    context.read<LeadContactBloc>().leadId ??
                                        0));
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
    );
  }
}
