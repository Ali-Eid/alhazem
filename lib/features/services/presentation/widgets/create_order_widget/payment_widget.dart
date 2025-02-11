import 'package:alhazem/core/bases/models/static_models/static_model.dart';
import 'package:alhazem/core/constants/values_manager.dart';
import 'package:alhazem/features/orders/presentation/blocs/currencies_bloc/currencies_bloc.dart';
import 'package:alhazem/features/services/presentation/blocs/check_price_bloc/check_price_bloc.dart';
import 'package:alhazem/features/services/presentation/blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/widgets/drop_down_static_widget.dart';

class PaymentWidget extends StatefulWidget {
  const PaymentWidget({super.key});

  @override
  State<PaymentWidget> createState() => _PaymentWidgetState();
}

class _PaymentWidgetState extends State<PaymentWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
          child: Column(
            children: [
              SizedBox(height: AppSizeH.s20),
              Row(
                children: [
                  Text(
                    "المبلغ الأجمالي:",
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  SizedBox(width: AppSizeW.s6),
                  Text(
                    '${context.read<CheckPriceBloc>().newPrice * context.read<InputValueCreateOrderCubit>().travelersContact.length}',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  SizedBox(width: AppSizeW.s6),
                  Text(
                    context.read<CurrenciesBloc>().currencies.isEmpty
                        ? ""
                        : context.read<CurrenciesBloc>().currencies.first.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                ],
              ),
              SizedBox(height: AppSizeH.s20),
              Container(
                padding: EdgeInsets.all(AppSizeW.s8),
                decoration: BoxDecoration(
                    color: ColorManager.white,
                    borderRadius: BorderRadius.circular(AppSizeR.s12),
                    boxShadow: [
                      BoxShadow(
                          color: ColorManager.smokeyGrey,
                          blurRadius: AppSizeR.s3,
                          spreadRadius: AppSizeR.s1)
                    ]),
                child: Row(
                  children: [
                    Text(
                      "العملة",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    Expanded(
                      child: BlocBuilder(
                        bloc: context.read<CurrenciesBloc>(),
                        builder: (context, state) {
                          return DropDownStaticWidget(
                              onChanged: (currency) {
                                context
                                    .read<CurrenciesBloc>()
                                    .currencySelected = currency;
                                setState(() {});
                              },
                              selectedValue: context
                                  .read<CurrenciesBloc>()
                                  .currencySelected,
                              values: context.read<CurrenciesBloc>().currencies,
                              hintText: "اختار العملة");
                        },
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: AppSizeH.s20),
              Row(
                children: [
                  Text(
                    "المبلغ المقبوض",
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                ],
              ),
              SizedBox(height: AppSizeH.s10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: AppSizeH.s35,
                      padding: EdgeInsets.all(AppSizeW.s8),
                      decoration: BoxDecoration(
                        color:
                            context.read<InputValueCreateOrderCubit>().notPaid
                                ? ColorManager.lightGrey.withOpacity(0.9)
                                : ColorManager.white,
                        borderRadius: BorderRadius.circular(AppSizeR.s12),
                        boxShadow:
                            context.read<InputValueCreateOrderCubit>().notPaid
                                ? null
                                : [
                                    BoxShadow(
                                      color: ColorManager.smokeyGrey,
                                      blurRadius: AppSizeR.s3,
                                      spreadRadius: AppSizeR.s1,
                                    )
                                  ],
                      ),
                      child: TextFormField(
                        readOnly:
                            context.read<InputValueCreateOrderCubit>().notPaid,
                        controller: context
                            .read<InputValueCreateOrderCubit>()
                            .amountReceived,
                        style: Theme.of(context).textTheme.displaySmall,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: AppSizeW.s6),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide.none)),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value:
                            context.read<InputValueCreateOrderCubit>().notPaid,
                        onChanged: (value) {
                          context
                              .read<InputValueCreateOrderCubit>()
                              .changeIsPaid(value);
                        },
                      ),
                      Text(
                        "غير مدفوع",
                        style: Theme.of(context).textTheme.headlineMedium,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
