import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../services/presentation/views/types_services_view.dart';
import '../blocs/input_get_orders_cubit/input_get_orders_cubit_cubit.dart';
import '../blocs/orders_bloc/orders_bloc.dart';
import '../widgets/order_item_widget.dart';

class OrdersView extends StatefulWidget {
  const OrdersView({super.key});

  @override
  State<OrdersView> createState() => _OrdersViewState();
}

class _OrdersViewState extends State<OrdersView> {
  // late OrdersBloc ordersBloc;
  int selectedPageNumber = 1;

  @override
  void initState() {
    if (context.read<CurrenciesBloc>().orderTypes.isEmpty) {
      context.read<CurrenciesBloc>().add(const CurrenciesEvent.getOrderTypes());

      // context.read<InputGetOrdersCubitCubit>().setType(
      //     context.read<CurrenciesBloc>().orderTypes.first.key.toLowerCase());
    } else {
      context.read<OrdersBloc>().add(OrdersEvent.getOrders(
          type:
              context.read<CurrenciesBloc>().orderTypes.first.key.toLowerCase(),
          page: 1));
      context.read<InputGetOrdersCubitCubit>().setType(
          context.read<CurrenciesBloc>().orderTypes.first.key.toLowerCase());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      listener: (context, CurrenciesState state) {
        state.mapOrNull(
          loadedOrderTypes: (value) {
            context.read<OrdersBloc>().add(OrdersEvent.getOrders(
                type: context
                    .read<CurrenciesBloc>()
                    .orderTypes
                    .first
                    .key
                    .toLowerCase(),
                page: 1));
          },
        );
      },
      bloc: context.read<CurrenciesBloc>(),
      builder: (context, CurrenciesState state) {
        return state.maybeMap(
          loading: (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          orElse: () {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: AppSizeH.s15),
                BlocBuilder(
                  bloc: context.read<OrdersBloc>(),
                  builder: (context, state) {
                    return Wrap(
                      children: context.read<CurrenciesBloc>().orderTypes.map(
                        (e) {
                          return Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                            child: ElevatedButton(
                                onPressed: () {
                                  context.read<OrdersBloc>().add(
                                      OrdersEvent.getOrders(
                                          type: e.key.toLowerCase(),
                                          page: context
                                                      .read<
                                                          InputGetOrdersCubitCubit>()
                                                      .type ==
                                                  e.key
                                              ? selectedPageNumber
                                              : 1));
                                  if (context
                                          .read<InputGetOrdersCubitCubit>()
                                          .type !=
                                      e.key) {
                                    setState(() {
                                      selectedPageNumber = 1;
                                    });
                                  }
                                  context
                                      .read<InputGetOrdersCubitCubit>()
                                      .setType(e.key.toLowerCase());
                                  context
                                      .read<InputGetOrdersCubitCubit>()
                                      .setPage(selectedPageNumber);
                                },
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                      context.read<OrdersBloc>().typeOrder ==
                                              e.key
                                          ? ColorManager.primary
                                          : ColorManager.white),
                                  shape: WidgetStateProperty.all(
                                    RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppSizeR.s7),
                                      side: BorderSide(
                                          color: ColorManager.primary),
                                    ),
                                  ),
                                ),
                                child: Text(
                                  e.value,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          color: context
                                                      .read<OrdersBloc>()
                                                      .typeOrder ==
                                                  e.key
                                              ? ColorManager.white
                                              : ColorManager.primary),
                                )),
                          );
                        },
                      ).toList(),
                    );
                  },
                ),
                Expanded(
                  child: BlocBuilder(
                    bloc: context.read<OrdersBloc>(),
                    builder: (context, OrdersState state) {
                      return state.maybeMap(
                        loading: (value) {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        loaded: (value) {
                          return value.orders.data.isEmpty
                              ? Center(
                                  child: EmptyWidget(
                                    title: "لا يوجد طلبات ",
                                    onPressed: () {
                                      context.read<OrdersBloc>().add(
                                          OrdersEvent.getOrders(
                                              type: context
                                                      .read<OrdersBloc>()
                                                      .typeOrder ??
                                                  context
                                                      .read<CurrenciesBloc>()
                                                      .orderTypes
                                                      .first
                                                      .value,
                                              page: selectedPageNumber));
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
                                            padding:
                                                EdgeInsets.all(AppSizeW.s8),
                                            child: OrderItemWidget(
                                              model: value.orders.data[index],
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
                BlocBuilder(
                  bloc: context.read<OrdersBloc>(),
                  builder: (context, OrdersState state) {
                    return state.maybeMap(
                      loading: (value) {
                        return const SizedBox();
                      },
                      orElse: () {
                        return context.read<OrdersBloc>().totalPages != null &&
                                context.read<OrdersBloc>().totalCounts != 0
                            ? NumberPagination(
                                onPageChanged: (int pageNumber) {
                                  setState(() {
                                    selectedPageNumber = pageNumber;
                                  });
                                  context
                                      .read<InputGetOrdersCubitCubit>()
                                      .setPage(selectedPageNumber);

                                  context.read<OrdersBloc>().add(
                                      OrdersEvent.getOrders(
                                          type: context
                                                  .read<OrdersBloc>()
                                                  .typeOrder ??
                                              context
                                                  .read<CurrenciesBloc>()
                                                  .orderTypes
                                                  .first
                                                  .value,
                                          page: selectedPageNumber));
                                },
                                groupSpacing: AppSizeW.s30,
                                iconNext: Icon(Icons.arrow_forward_ios_rounded,
                                    size: AppSizeSp.s15),
                                iconPrevious: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: AppSizeSp.s15),
                                pageTotal:
                                    context.read<OrdersBloc>().totalPages ?? 1,
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
        );
      },
    );
  }
}
