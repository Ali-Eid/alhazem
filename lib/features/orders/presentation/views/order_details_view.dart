import 'package:alhazem/features/orders/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../domain/models/order_details_model/order_details_model.dart';
import '../widgets/return_reason_order_details_widget.dart';
import '../widgets/travelers_order_details_widget.dart';
import '../widgets/variants_order_details_widget.dart';

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
                    ),
                    SizedBox(height: AppSizeH.s10),
                    Visibility(
                      visible: value
                          .orderDetails.data.first.returnReasons.isNotEmpty,
                      child: ReturnReasonOrderDetailsWidget(
                        title: "اسباب إعادة الطلب",
                        model: value.orderDetails.data.first.returnReasons,
                      ),
                    ),
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
