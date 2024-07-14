import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../main/presentation/blocs/search_bloc/search_bloc.dart';
import '../../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import '../create_order_dialog_widget.dart';

class PartnerItemsWidget extends StatefulWidget {
  const PartnerItemsWidget({super.key});

  @override
  State<PartnerItemsWidget> createState() => _PartnerItemsWidgetState();
}

class _PartnerItemsWidgetState extends State<PartnerItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return context.read<SearchBloc>().contacts.isNotEmpty &&
                context.read<InputValueCreateOrderCubit>().isShowPartner
            ? Padding(
                padding: EdgeInsets.only(top: AppSizeH.s65),
                child: Container(
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: AppSizeR.s15,
                            color: ColorManager.shadow)
                      ],
                      borderRadius: BorderRadius.circular(AppSizeR.s15),
                    ),
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(
                          vertical: AppSizeH.s8, horizontal: AppSizeW.s8),
                      child: Column(
                        children: context.read<SearchBloc>().contacts.map(
                          (e) {
                            return Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: AppSizeW.s15,
                                  vertical: AppSizeH.s5),
                              child: InkWell(
                                onTap: () {
                                  context
                                      .read<InputValueCreateOrderCubit>()
                                      .partnerController
                                      .text = e.name;
                                  context
                                      .read<InputValueCreateOrderCubit>()
                                      .setShowPartner(false);
                                  context
                                      .read<InputValueCreateOrderCubit>()
                                      .setPartnerId(e);
                                },
                                child: ContactSearchItemWidget(model: e),
                              ),
                            );
                          },
                        ).toList(),
                      ),
                    )),
              )
            : context.read<InputValueCreateOrderCubit>().isShowPartner &&
                    context
                        .read<InputValueCreateOrderCubit>()
                        .partnerController
                        .text
                        .isNotEmpty
                ? Padding(
                    padding: EdgeInsets.only(top: AppSizeH.s65),
                    child: Container(
                      height: AppSizeH.s103,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: ColorManager.white,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: AppSizeR.s15,
                              color: ColorManager.shadow)
                        ],
                        borderRadius: BorderRadius.circular(AppSizeR.s15),
                      ),
                      child: const Text("no record "),
                    ),
                  )
                : const SizedBox();
      },
    );
  }
}

class SelectPartnerWidget extends StatefulWidget {
  const SelectPartnerWidget({super.key});

  @override
  State<SelectPartnerWidget> createState() => _SelectPartnerWidgetState();
}

class _SelectPartnerWidgetState extends State<SelectPartnerWidget> {
  Timer? _debounce;
  _onSearchPartnerChanged(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      context.read<InputValueCreateOrderCubit>().setShowPartner(true);
      context.read<SearchBloc>().add(SearchEvent.searchContract(
          name:
              context.read<InputValueCreateOrderCubit>().partnerController.text,
          page: 1));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppSizeW.s6, vertical: AppSizeH.s15),
              child: SizedBox(
                child: TextFormField(
                  style: Theme.of(context).textTheme.bodyMedium,
                  decoration: const InputDecoration(
                    hintText: "اضافة زبون...",
                  ),
                  onChanged: _onSearchPartnerChanged,
                  controller: context
                      .read<InputValueCreateOrderCubit>()
                      .partnerController,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
              child: BlocBuilder(
                bloc: context.read<InputValueCreateOrderCubit>(),
                builder: (context, state) {
                  return Visibility(
                    visible: context
                            .read<InputValueCreateOrderCubit>()
                            .partnerContact !=
                        null,
                    child: Container(
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
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "معلومات الزبون",
                            style: Theme.of(context).textTheme.displaySmall,
                          ),
                          const Divider(),
                          Row(
                            children: [
                              Text(
                                "الأسم:",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              SizedBox(width: AppSizeW.s8),
                              Text(
                                context
                                        .read<InputValueCreateOrderCubit>()
                                        .partnerContact
                                        ?.name ??
                                    "",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizeH.s5),
                          Row(
                            children: [
                              Text(
                                "الهاتف:",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              SizedBox(width: AppSizeW.s8),
                              Text(
                                context
                                        .read<InputValueCreateOrderCubit>()
                                        .partnerContact
                                        ?.phone ??
                                    "",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                          SizedBox(height: AppSizeH.s5),
                          Row(
                            children: [
                              Text(
                                "المعرف:",
                                style: Theme.of(context).textTheme.titleSmall,
                              ),
                              SizedBox(width: AppSizeW.s8),
                              Text(
                                "#${context.read<InputValueCreateOrderCubit>().partnerContact?.id}",
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
        BlocBuilder(
          bloc: context.read<SearchBloc>(),
          builder: (context, SearchState state) {
            return state.maybeMap(
              laoding: (value) {
                return Padding(
                  padding: EdgeInsets.only(top: AppSizeH.s65),
                  child: Container(
                    height: AppSizeH.s103,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: [
                        BoxShadow(
                            blurRadius: AppSizeR.s15,
                            color: ColorManager.shadow)
                      ],
                      borderRadius: BorderRadius.circular(AppSizeR.s15),
                    ),
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  ),
                );
              },
              orElse: () {
                return const PartnerItemsWidget();
              },
            );
          },
        ),
      ],
    );
  }
}
