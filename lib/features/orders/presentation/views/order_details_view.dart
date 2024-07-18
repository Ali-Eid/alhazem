import 'package:alhazem/features/orders/presentation/blocs/orders_bloc/orders_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/assets_manager.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/alert_dialog_widget.dart';
import '../../domain/models/order_details_model/order_details_model.dart';
import '../blocs/input_payment_cubit/input_payment_cubit.dart';
import '../blocs/payment_bloc/payment_bloc.dart';
import '../widgets/order_item_widget.dart';
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
    return BlocConsumer(
      listener: (context, OrdersState state) {
        state.mapOrNull(
          loadedOrderDetails: (value) {
            context.read<InputPaymentCubit>().setTotal(
                total: value.orderDetails.data.first.orderItems.first.total,
                paid: value.orderDetails.data.first.orderItems.first.totalPaid,
                remaining: value
                    .orderDetails.data.first.orderItems.first.remainedTotal);
          },
        );
      },
      bloc: orderBloc,
      builder: (context, OrdersState state) {
        return state.maybeMap(loading: (value) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }, loadedOrderDetails: (value) {
          return BlocBuilder(
            bloc: context.read<InputPaymentCubit>(),
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  centerTitle: true,
                  title: Text(value.orderDetails.data.first.name),
                  actions: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s12),
                      child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (_) {
                                return AlertDialogWidget(
                                  title: "اضافة دفعة",
                                  content: SizedBox(
                                    width: AppSizeW.s312,
                                    height: AppSizeH.s425,
                                    child: BlocProvider.value(
                                      value: context.read<InputPaymentCubit>(),
                                      child: CreatePaymentWidget(
                                        isRoot: false,
                                        orderId: widget.orderId,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: AppSizeW.s200,
                            height: AppSizeH.s35,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image(
                                  image: AssetImage(ImageAssets.payment),
                                  color: ColorManager.white,
                                  fit: BoxFit.fill,
                                  filterQuality: FilterQuality.high,
                                  height: AppSizeH.s35,
                                ),
                                SizedBox(width: AppSizeW.s12),
                                const Text("دفع")
                              ],
                            ),
                          )),
                    ),
                  ],
                ),
                body: SingleChildScrollView(
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
                                value: value.orderDetails.data.first.orderItems
                                    .first.name,
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
                                name: "المبلغ الاجمالي",
                                value:
                                    "${context.read<InputPaymentCubit>().total * value.orderDetails.data.first.orderItems.length}",
                              ),
                              Divider(
                                endIndent: AppSizeW.s40,
                                indent: AppSizeW.s40,
                              ),
                              OrderDetailsWidget(
                                name: "المبلغ المقبوض",
                                value:
                                    "${context.read<InputPaymentCubit>().totalPaid}",
                              ),
                              Divider(
                                endIndent: AppSizeW.s40,
                                indent: AppSizeW.s40,
                              ),
                              OrderDetailsWidget(
                                name: "المبلغ المتبقي",
                                value:
                                    "${context.read<InputPaymentCubit>().remainingTotal}",
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
                          model: value.orderDetails.data.first.orderItems.first
                              .variants,
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
                ),
              );
            },
          );
        }, orElse: () {
          return const Text("error");
        });
      },
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
