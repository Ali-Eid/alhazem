import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:alhazem/core/widgets/alert_dialog_widget.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/orders/domain/models/create_payment_model/input_create_payment_model/input_create_payment_model.dart';
import 'package:alhazem/features/orders/presentation/blocs/input_payment_cubit/input_payment_cubit.dart';
import 'package:alhazem/features/orders/presentation/blocs/payment_bloc/payment_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/order_status.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/routers/routes_manager.dart';
import '../../../../core/widgets/drop_down_static_widget.dart';
import '../../../services/presentation/widgets/create_order_widget/payment_widget.dart';
import '../../domain/models/order_model/order_model.dart';
import '../blocs/currencies_bloc/currencies_bloc.dart';

class OrderItemWidget extends StatefulWidget {
  final OrderModel model;
  const OrderItemWidget({
    super.key,
    required this.model,
  });

  @override
  State<OrderItemWidget> createState() => _OrderItemWidgetState();
}

class _OrderItemWidgetState extends State<OrderItemWidget> {
  late InputPaymentCubit inputPaymentCubit;
  @override
  void initState() {
    inputPaymentCubit = InputPaymentCubit(0);
    inputPaymentCubit.setTotal(
        total: widget.model.total,
        paid: widget.model.totalPaid,
        remaining: widget.model.remainedTotal);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputPaymentCubit,
      builder: (context, state) {
        return Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            InkWell(
              onTap: () {
                context.goNamed(RoutesNames.orderDetailsRoute,
                    pathParameters: {
                      "id": widget.model.id.toString(),
                    },
                    extra: inputPaymentCubit);
              },
              child: Container(
                // padding: EdgeInsets.all(AppSizeW.s8),
                decoration: BoxDecoration(
                  color: ColorManager.white,
                  boxShadow: [
                    BoxShadow(
                        blurRadius: AppSizeR.s3,
                        spreadRadius: AppSizeR.s3,
                        color: Colors.grey.withOpacity(.3))
                  ],
                  borderRadius: BorderRadius.circular(AppSizeR.s15),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: AppSizeH.s40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: ColorManager.primaryDark,
                                  borderRadius: BorderRadiusDirectional.only(
                                      topStart: Radius.circular(AppSizeR.s15),
                                      topEnd: Radius.circular(AppSizeR.s15))),
                              padding: EdgeInsets.all(AppSizeW.s2),
                              child: Text(
                                widget.model.name,
                                style:
                                    Theme.of(context).textTheme.displayMedium,
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
                              title:
                                  widget.model.isOffice ? "المكتب" : "المسافر",
                              value: widget.model.partnerName),
                          SizedBox(height: AppSizeH.s15),
                          TitleValueItemOrder(
                              title: "رقم الهاتف",
                              value: widget.model.partnerNumber),
                          SizedBox(height: AppSizeH.s15),
                          Row(
                            children: [
                              Text(
                                "تاريخ الطلب:",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              SizedBox(width: AppSizeW.s5),
                              Expanded(
                                child: Text(
                                  widget.model.date.formatDateString(context),
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizeH.s10),
                          const Divider(),
                          TitleValueItemOrder(
                            title: "المبلغ الأجمالي",
                            titleStyle: Theme.of(context).textTheme.labelMedium,
                            valueStyle:
                                Theme.of(context).textTheme.displaySmall,
                            value:
                                '${inputPaymentCubit.total} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}',
                          ),
                          SizedBox(height: AppSizeH.s10),
                          TitleValueItemOrder(
                            title: "المبلغ المقبوض",
                            titleStyle: Theme.of(context).textTheme.labelMedium,
                            valueStyle:
                                Theme.of(context).textTheme.displaySmall,
                            value:
                                '${inputPaymentCubit.totalPaid} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}',
                          ),
                          SizedBox(height: AppSizeH.s10),
                          TitleValueItemOrder(
                            title: "المبلغ المتبقي",
                            titleStyle: Theme.of(context).textTheme.labelMedium,
                            valueStyle:
                                Theme.of(context).textTheme.displaySmall,
                            value:
                                '${inputPaymentCubit.remainingTotal} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            widget.model.state != OrderStatus.cancel.name
                ? inputPaymentCubit.total > inputPaymentCubit.totalPaid
                    ? Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: AppSizeW.s6, vertical: AppSizeH.s10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Tooltip(
                              message: "اضافة دفعة",
                              child: InkWell(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (_) {
                                      return AlertDialogWidget(
                                        title: "اضافة دفعة",
                                        content: SizedBox(
                                          width: AppSizeW.s312,
                                          height: AppSizeH.s425,
                                          child: BlocProvider.value(
                                            value: inputPaymentCubit,
                                            child: CreatePaymentWidget(
                                              isRoot: true,
                                              orderId: widget.model.id,
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                  height: AppSizeW.s35,
                                  width: AppSizeW.s35,
                                  padding: EdgeInsets.all(AppSizeW.s6),
                                  decoration: BoxDecoration(
                                    color: ColorManager.primary,
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image(
                                    image: AssetImage(ImageAssets.payment),
                                    color: ColorManager.white,
                                    fit: BoxFit.fill,
                                    filterQuality: FilterQuality.high,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    : const SizedBox()
                : const SizedBox()
          ],
        );
      },
    );
  }
}

class TitleValueItemOrder extends StatelessWidget {
  final String title;
  final String value;
  final TextStyle? titleStyle;
  final TextStyle? valueStyle;
  const TitleValueItemOrder({
    super.key,
    required this.title,
    required this.value,
    this.titleStyle,
    this.valueStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$title:',
          style: titleStyle ?? Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(width: AppSizeW.s5),
        Expanded(
          child: Text(
            value,
            style: valueStyle ?? Theme.of(context).textTheme.headlineLarge,
          ),
        ),
      ],
    );
  }
}

class CreatePaymentWidget extends StatefulWidget {
  final int orderId;
  final bool isRoot;
  const CreatePaymentWidget({
    super.key,
    required this.orderId,
    required this.isRoot,
  });

  @override
  State<CreatePaymentWidget> createState() => _CreatePaymentWidgetState();
}

class _CreatePaymentWidgetState extends State<CreatePaymentWidget> {
  final priceController = TextEditingController();
  late PaymentBloc paymentBloc;
  @override
  void initState() {
    paymentBloc = instance<PaymentBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
      child: Column(
        children: [
          SizedBox(height: AppSizeH.s20),
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "المبلغ الأجمالي:",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(width: AppSizeW.s6),
                    BlocBuilder(
                      bloc: context.read<InputPaymentCubit>(),
                      builder: (context, state) {
                        return Text(
                          "${context.read<InputPaymentCubit>().total} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}",
                          style: Theme.of(context).textTheme.displaySmall,
                        );
                      },
                    )
                  ],
                ),
                SizedBox(height: AppSizeH.s10),
                Row(
                  children: [
                    Text(
                      "المبلغ المتبقي:",
                      style: Theme.of(context).textTheme.labelMedium,
                    ),
                    SizedBox(width: AppSizeW.s6),
                    BlocBuilder(
                      bloc: context.read<InputPaymentCubit>(),
                      builder: (context, state) {
                        return Text(
                          "${context.read<InputPaymentCubit>().remainingTotal} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}",
                          style: Theme.of(context).textTheme.displaySmall,
                        );
                      },
                    )
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
                                values:
                                    context.read<CurrenciesBloc>().currencies,
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
                      "المقبوض مسبقاً:",
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                    SizedBox(width: AppSizeW.s4),
                    BlocBuilder(
                      bloc: context.read<InputPaymentCubit>(),
                      builder: (context, state) {
                        return Text(
                          "${context.read<InputPaymentCubit>().totalPaid} ${context.read<CurrenciesBloc>().currencies.isEmpty ? "" : context.read<CurrenciesBloc>().currencies.first.name}",
                          style: Theme.of(context).textTheme.headlineSmall,
                        );
                      },
                    )
                  ],
                ),
                const Divider(),
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
                        height: AppSizeH.s45,
                        padding: EdgeInsets.all(AppSizeW.s8),
                        decoration: BoxDecoration(
                          color: ColorManager.white,
                          borderRadius: BorderRadius.circular(AppSizeR.s12),
                          boxShadow: [
                            BoxShadow(
                              color: ColorManager.smokeyGrey,
                              blurRadius: AppSizeR.s3,
                              spreadRadius: AppSizeR.s1,
                            )
                          ],
                        ),
                        child: TextFormField(
                          controller: priceController,
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
                  ],
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: BlocConsumer(
                  listener: (context, PaymentState state) {
                    state.mapOrNull(
                      error: (value) {
                        showToast(
                            context: context,
                            message: value.message,
                            type: ToastificationType.error);
                      },
                      success: (value) {
                        context.read<InputPaymentCubit>().setTotal(
                            total: value.success.data.total,
                            paid: value.success.data.totalPaid,
                            remaining: value.success.data.remainedTotal);
                        showToast(
                            context: context, message: value.success.message);
                        priceController.clear();
                      },
                    );
                  },
                  bloc: paymentBloc,
                  builder: (context, PaymentState state) {
                    return state.maybeMap(
                      loading: (value) {
                        return const LinearProgressIndicator();
                      },
                      orElse: () {
                        return ElevatedButton(
                            onPressed: () {
                              paymentBloc.add(PaymentEvent.createPayment(
                                  input: InputCreatePaymentModel(
                                      orderId: widget.orderId,
                                      total: int.parse(priceController.text),
                                      currency: context
                                              .read<CurrenciesBloc>()
                                              .currencySelected
                                              ?.id ??
                                          0)));
                            },
                            child: const Text("دفع"));
                      },
                    );
                  },
                ),
              ),
              SizedBox(width: AppSizeW.s12),
              Expanded(
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStateProperty.all(ColorManager.white),
                        shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(AppSizeR.s7),
                            side: BorderSide(color: ColorManager.primary)))),
                    onPressed: () {
                      widget.isRoot
                          ? context.pop()
                          : Navigator.of(context).pop();
                    },
                    child: Text(
                      "رجوع",
                      style: Theme.of(context).textTheme.titleSmall,
                    )),
              ),
            ],
          ),
          // SizedBox(height: AppSizeH.s20),
        ],
      ),
    );
  }
}
