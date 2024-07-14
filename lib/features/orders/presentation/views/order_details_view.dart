import 'package:alhazem/features/orders/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../domain/models/order_details_model/order_details_model.dart';

class OrderDetailsView extends StatefulWidget {
  final int orderId;
  const OrderDetailsView({super.key, required this.orderId});

  @override
  State<OrderDetailsView> createState() => _OrderDetailsViewState();
}

class _OrderDetailsViewState extends State<OrderDetailsView> {
  late OrdersBloc orderBloc;
  @override
  void initState() {
    orderBloc = instance<OrdersBloc>()
      ..add(OrdersEvent.getOrderDetails(orderId: widget.orderId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder(
        bloc: orderBloc,
        builder: (context, OrdersState state) {
          return state.maybeMap(loading: (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }, loadedOrderDetails: (value) {
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
                          OrderDetailsWidget(
                            name: "رقم الطلب",
                            value: value.orderDetails.data.first.name,
                          ),
                          Divider(
                            endIndent: AppSizeW.s40,
                            indent: AppSizeW.s40,
                          ),
                          OrderDetailsWidget(
                            name: "نوع الرحلة",
                            value: value
                                .orderDetails.data.first.orderItems.first.name,
                          ),
                          Divider(
                            endIndent: AppSizeW.s40,
                            indent: AppSizeW.s40,
                          ),
                          OrderDetailsWidget(
                            name: "الوجهة",
                            value: value.orderDetails.data.first.orderItems
                                .first.country,
                          ),
                          Divider(
                            endIndent: AppSizeW.s40,
                            indent: AppSizeW.s40,
                          ),
                          OrderDetailsWidget(
                            name: "السعر",
                            value:
                                "${value.orderDetails.data.first.orderItems.first.priceUnit * value.orderDetails.data.first.orderItems.length}",
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: AppSizeH.s10),
                    TravelersOrderDetailsWidget(
                      title: "معلومات المسافرين",
                      model: value.orderDetails.data.first.orderItems,
                    ),
                    SizedBox(height: AppSizeH.s10),
                    VariantsOrderDetailsWidget(
                      title: "الخدمات الأضافية",
                      model: value
                          .orderDetails.data.first.orderItems.first.variants,
                    )
                  ],
                ),
              ),
            );
          }, orElse: () {
            return const Text("error");
          });
        },
      ),
    );
  }
}

class OrderDetailsWidget extends StatelessWidget {
  final String name;
  final String value;
  const OrderDetailsWidget({
    super.key,
    required this.name,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$name:',
          style: Theme.of(context).textTheme.titleMedium,
        ),
        SizedBox(width: AppSizeW.s5),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.labelSmall,
          ),
        )
      ],
    );
  }
}

class TravelersOrderDetailsWidget extends StatelessWidget {
  final String title;
  final List<OrderLineModel> model;
  const TravelersOrderDetailsWidget({
    super.key,
    required this.title,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          boxShadow: [
            BoxShadow(color: ColorManager.shadow, blurRadius: AppSizeR.s10)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s10),
          Column(
            children: model.map(
              (e) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSizeH.s4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: AppSizeSp.s20,
                      ),
                      SizedBox(width: AppSizeW.s4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            e.customer.name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            e.customer.nationalNumber,
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}

class VariantsOrderDetailsWidget extends StatelessWidget {
  final String title;
  final List<OrderVariantModel> model;
  const VariantsOrderDetailsWidget({
    super.key,
    required this.title,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s15),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(AppSizeR.s15),
          boxShadow: [
            BoxShadow(color: ColorManager.shadow, blurRadius: AppSizeR.s10)
          ]),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizeH.s10),
          Column(
            children: model.map(
              (e) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: AppSizeH.s4),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: AppSizeSp.s20,
                      ),
                      SizedBox(width: AppSizeW.s4),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            e.name,
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          Text(
                            e.price.toString(),
                            style: Theme.of(context).textTheme.headlineMedium,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ).toList(),
          )
        ],
      ),
    );
  }
}
