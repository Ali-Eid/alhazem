import 'dart:async';

import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/contacts/domain/models/contact_model/contact_model.dart';
import 'package:alhazem/features/contacts/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:alhazem/features/main/presentation/blocs/search_bloc/search_bloc.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:alhazem/features/services/presentation/blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import 'package:alhazem/features/services/presentation/widgets/create_order_widget/payment_widget.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../contacts/presentation/widgets/drop_down_widget.dart';
import '../../../orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import '../../../orders/presentation/blocs/create_order_bloc/create_order_bloc.dart';
import '../blocs/check_price_bloc/check_price_bloc.dart';
import 'create_order_widget/partner_widget.dart';
import 'create_order_widget/traveler_widget.dart';

class CreateOrderDialogWidget extends StatefulWidget {
  final int serviceId;
  const CreateOrderDialogWidget({super.key, required this.serviceId});

  @override
  _CreateOrderDialogWidgetState createState() =>
      _CreateOrderDialogWidgetState();
}

class _CreateOrderDialogWidgetState extends State<CreateOrderDialogWidget> {
  List<Widget> contents = [
    const SelectPartnerWidget(),
    const SelectTravelerWidget(),
    const PaymentWidget()
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder(
          bloc: context.read<InputValueCreateOrderCubit>(),
          builder: (context, state) {
            return Expanded(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppSizeW.s6,
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(
                              Icons.person,
                              color: context
                                          .read<InputValueCreateOrderCubit>()
                                          .currentIndex >=
                                      0
                                  ? ColorManager.primaryDark
                                  : ColorManager.shipGrey,
                            ),
                            Text(
                              "الزبون",
                              style: context
                                          .read<InputValueCreateOrderCubit>()
                                          .currentIndex >=
                                      0
                                  ? Theme.of(context).textTheme.headlineSmall
                                  : Theme.of(context).textTheme.headlineMedium,
                            )
                          ],
                        ),
                        Expanded(
                            child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                          child: Divider(
                            color: context
                                        .read<InputValueCreateOrderCubit>()
                                        .currentIndex >
                                    0
                                ? ColorManager.primaryDark
                                : ColorManager.shipGrey,
                          ),
                        )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.airplanemode_active_outlined,
                                color: context
                                            .read<InputValueCreateOrderCubit>()
                                            .currentIndex >=
                                        1
                                    ? ColorManager.primaryDark
                                    : ColorManager.shipGrey),
                            Text(
                              "المسافرين",
                              style: context
                                          .read<InputValueCreateOrderCubit>()
                                          .currentIndex >=
                                      1
                                  ? Theme.of(context).textTheme.headlineSmall
                                  : Theme.of(context).textTheme.headlineMedium,
                            )
                          ],
                        ),
                        Expanded(
                            child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                          child: Divider(
                              color: context
                                          .read<InputValueCreateOrderCubit>()
                                          .currentIndex >
                                      1
                                  ? ColorManager.primaryDark
                                  : ColorManager.shipGrey),
                        )),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Icon(Icons.monetization_on_outlined,
                                color: context
                                            .read<InputValueCreateOrderCubit>()
                                            .currentIndex ==
                                        2
                                    ? ColorManager.primaryDark
                                    : ColorManager.shipGrey),
                            Text(
                              "الدفع",
                              style: context
                                          .read<InputValueCreateOrderCubit>()
                                          .currentIndex ==
                                      2
                                  ? Theme.of(context).textTheme.headlineSmall
                                  : Theme.of(context).textTheme.headlineMedium,
                            )
                          ],
                        ),
                      ]),
                ),
                Expanded(
                    child: contents[context
                        .read<InputValueCreateOrderCubit>()
                        .currentIndex]),
              ],
            ));
          },
        ),
        SizedBox(height: AppSizeH.s20),
        ButtonCreateDialogWidget(
          serviceId: widget.serviceId,
        ),
      ],
    );
  }
}

class ButtonCreateDialogWidget extends StatefulWidget {
  final int serviceId;
  const ButtonCreateDialogWidget({
    super.key,
    required this.serviceId,
  });

  @override
  State<ButtonCreateDialogWidget> createState() =>
      _ButtonCreateDialogWidgetState();
}

class _ButtonCreateDialogWidgetState extends State<ButtonCreateDialogWidget> {
  void onPressed(int currentIndex) {
    switch (currentIndex) {
      case 0:
        if (context.read<InputValueCreateOrderCubit>().partnerContact != null) {
          context.read<InputValueCreateOrderCubit>().nextIndex(
              context.read<InputValueCreateOrderCubit>().currentIndex);
        } else {
          showToast(
              context: context,
              message: "Please select a partner",
              type: ToastificationType.warning);
        }
        break;
      case 1:
        if (context
            .read<InputValueCreateOrderCubit>()
            .travelersContact
            .isNotEmpty) {
          context.read<InputValueCreateOrderCubit>().nextIndex(
              context.read<InputValueCreateOrderCubit>().currentIndex);
        } else {
          showToast(
              context: context,
              message: "Please select travelers",
              type: ToastificationType.warning);
        }
        break;
      case 2:
        if (!context.read<InputValueCreateOrderCubit>().notPaid &&
            context
                .read<InputValueCreateOrderCubit>()
                .amountReceived
                .text
                .isEmpty) {
          showToast(
              context: context,
              message: "Please enter the amount",
              type: ToastificationType.warning);
        } else {
          context.read<CreateOrderBloc>().add(
                CreateOrderEvent.createOrder(
                  input: InputCreateOrderModel(
                      partnerId: context
                              .read<InputValueCreateOrderCubit>()
                              .partnerContact
                              ?.id ??
                          0,
                      currency:
                          context.read<CurrenciesBloc>().currencySelected?.id ??
                              0,
                      price: context.read<CheckPriceBloc>().newPrice *
                          context
                              .read<InputValueCreateOrderCubit>()
                              .travelersContact
                              .length,
                      serviceId: widget.serviceId,
                      totalPaid: double.parse(context
                              .read<InputValueCreateOrderCubit>()
                              .amountReceived
                              .text
                              .isEmpty
                          ? "0"
                          : context
                              .read<InputValueCreateOrderCubit>()
                              .amountReceived
                              .text),
                      travelers: context
                          .read<InputValueCreateOrderCubit>()
                          .travelersContact
                          .map((e) => TravelerInputOrderModel(travelId: e.id))
                          .toList(),
                      variantIds: context
                          .read<CheckPriceBloc>()
                          .variantsValue
                          .map(
                            (e) => e.id,
                          )
                          .toList()),
                ),
              );
        }

        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {
                  context.read<InputValueCreateOrderCubit>().previousIndex(
                      context.read<InputValueCreateOrderCubit>().currentIndex);
                },
                style: ButtonStyle(
                    backgroundColor:
                        WidgetStateProperty.all(ColorManager.white),
                    shape: WidgetStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSizeR.s7),
                        side: BorderSide(color: ColorManager.primary)))),
                child: Text(
                  "رجوع",
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
            SizedBox(width: AppSizeW.s12),
            Expanded(
              flex: 2,
              child: BlocBuilder(
                bloc: context.read<CreateOrderBloc>(),
                builder: (context, CreateOrderState state) {
                  return state.maybeMap(
                    loading: (value) {
                      return const LinearProgressIndicator();
                    },
                    orElse: () {
                      return ElevatedButton(
                        onPressed: () {
                          onPressed(context
                              .read<InputValueCreateOrderCubit>()
                              .currentIndex);
                        },
                        child: Text(
                            context
                                        .read<InputValueCreateOrderCubit>()
                                        .currentIndex ==
                                    2
                                ? "إنشاء الطلب"
                                : "التالي",
                            style: Theme.of(context)
                                .textTheme
                                .labelSmall!
                                .copyWith(color: ColorManager.white)),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}

class ContactSearchItemWidget extends StatelessWidget {
  final ContactModel model;
  final bool isTraveler;
  const ContactSearchItemWidget({
    super.key,
    required this.model,
    this.isTraveler = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSizeW.s5),
      decoration: BoxDecoration(
          color: ColorManager.background,
          borderRadius: BorderRadius.circular(AppSizeR.s15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(AppSizeW.s8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: ColorManager.white),
                child: const Icon(Icons.person),
              ),
              SizedBox(width: AppSizeW.s5),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Text(
                        "المعرف:",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        "#${model.id}",
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                  // SizedBox(height: AppSizeH.s10),

                  Row(
                    children: [
                      Text(
                        "الأسم:",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        model.name,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text(
                        "رقم الهاتف:",
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      Text(
                        model.phone,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          isTraveler
              ? BlocBuilder(
                  bloc: context.read<InputValueCreateOrderCubit>(),
                  builder: (context, state) {
                    return Container(
                      alignment: Alignment.center,
                      width: AppSizeW.s15,
                      height: AppSizeW.s15,
                      decoration: BoxDecoration(
                          border:
                              Border.all(width: 0.5, color: ColorManager.black),
                          borderRadius: BorderRadius.circular(AppSizeR.s3)),
                      child: context
                              .read<InputValueCreateOrderCubit>()
                              .travelers
                              .contains(
                                  TravelerInputOrderModel(travelId: model.id))
                          ? Icon(
                              Icons.check,
                              color: ColorManager.secondary,
                              size: AppSizeSp.s12,
                            )
                          : const SizedBox(),
                    );
                  },
                )
              : const SizedBox()
        ],
      ),
    );
  }
}
