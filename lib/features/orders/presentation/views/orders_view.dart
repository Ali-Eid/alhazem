import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/values_manager.dart';
import '../blocs/orders_bloc/orders_bloc.dart';

class OrderssView extends StatefulWidget {
  const OrderssView({super.key});

  @override
  State<OrderssView> createState() => _OrderssViewState();
}

class _OrderssViewState extends State<OrderssView> {
  late OrdersBloc ordersBloc;
  @override
  void initState() {
    ordersBloc = instance<OrdersBloc>()
      ..add(OrdersEvent.getOrders(
          type: context.read<CurrenciesBloc>().orderTypes.first.key, page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: AppSizeH.s15),
        BlocBuilder(
          bloc: ordersBloc,
          builder: (context, state) {
            return Row(
              children: context.read<CurrenciesBloc>().orderTypes.map(
                (e) {
                  return Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                      child: ElevatedButton(
                          onPressed: () {
                            ordersBloc.add(
                                OrdersEvent.getOrders(type: e.key, page: 1));
                          },
                          style: ButtonStyle(
                            backgroundColor: WidgetStateProperty.all(
                                ordersBloc.typeOrder == e.key
                                    ? ColorManager.primary
                                    : ColorManager.white),
                            shape: WidgetStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.circular(AppSizeR.s7),
                                side: BorderSide(color: ColorManager.primary),
                              ),
                            ),
                          ),
                          child: Text(
                            e.value,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                    color: ordersBloc.typeOrder == e.key
                                        ? ColorManager.white
                                        : ColorManager.primary),
                          )),
                    ),
                  );
                },
              ).toList(),
            );
          },
        ),
        Expanded(
          child: BlocBuilder(
            bloc: ordersBloc,
            builder: (context, OrdersState state) {
              return state.maybeMap(
                loading: (value) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loaded: (value) {
                  return Column(
                    children: [
                      SizedBox(height: AppSizeH.s15),
                      Expanded(
                        child: GridView.builder(
                          itemCount: value.orders.data.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  childAspectRatio: 3 / 2, crossAxisCount: 4),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.all(AppSizeW.s8),
                              child: Container(
                                // padding: EdgeInsets.all(AppSizeW.s8),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: AppSizeR.s3,
                                        spreadRadius: AppSizeR.s3,
                                        color: Colors.grey.withOpacity(.3))
                                  ],
                                  borderRadius:
                                      BorderRadius.circular(AppSizeR.s15),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: AppSizeH.s30,
                                      child: Row(
                                        children: [
                                          Expanded(
                                            child: Container(
                                              alignment: Alignment.center,
                                              decoration: BoxDecoration(
                                                  color: ColorManager.error,
                                                  borderRadius:
                                                      BorderRadiusDirectional
                                                          .only(
                                                              topStart: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s15),
                                                              topEnd: Radius
                                                                  .circular(
                                                                      AppSizeR
                                                                          .s15))),
                                              padding:
                                                  EdgeInsets.all(AppSizeW.s2),
                                              child: Text(
                                                value.orders.data[index].state,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayMedium,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(AppSizeW.s12),
                                      child: Column(
                                        children: [
                                          TitleValueItemOrder(
                                              title: "الرقم",
                                              value: value
                                                  .orders.data[index].name),
                                          SizedBox(height: AppSizeH.s15),
                                          TitleValueItemOrder(
                                              title: "تاريخ الطلب",
                                              value: value
                                                  .orders.data[index].date),
                                          SizedBox(height: AppSizeH.s15),
                                          TitleValueItemOrder(
                                              title: "الزبون",
                                              value: value.orders.data[index]
                                                  .partnerName),
                                          SizedBox(height: AppSizeH.s15),
                                          TitleValueItemOrder(
                                              title: "رقم الهاتف",
                                              value: value.orders.data[index]
                                                  .partnerNumber),
                                          SizedBox(height: AppSizeH.s15),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  );
                },
                orElse: () {
                  return const Text("error");
                },
              );
            },
          ),
        ),
      ],
    );
  }
}

class TitleValueItemOrder extends StatelessWidget {
  final String title;
  final String value;
  const TitleValueItemOrder({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title:',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(color: ColorManager.shipGrey),
        ),
        SizedBox(width: AppSizeW.s5),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}
