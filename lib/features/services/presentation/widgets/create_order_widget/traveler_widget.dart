import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/color_manager.dart';
import '../../../../../core/constants/values_manager.dart';
import '../../../../main/presentation/blocs/search_bloc/search_bloc.dart';
import '../../../../orders/domain/models/input_models/input_create_model/input_create_order_model.dart';
import '../../blocs/input_value_create_order_cubit/input_value_create_order_cubit.dart';
import '../create_order_dialog_widget.dart';

class TravellersItemsWidget extends StatefulWidget {
  const TravellersItemsWidget({super.key});

  @override
  State<TravellersItemsWidget> createState() => _TravellersItemsWidgetState();
}

class _TravellersItemsWidgetState extends State<TravellersItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateOrderCubit>(),
      builder: (context, state) {
        return context.read<SearchBloc>().contacts.isNotEmpty &&
                context.read<InputValueCreateOrderCubit>().isShowTraveler
            ? Padding(
                padding: EdgeInsets.only(top: AppSizeH.s65),
                child: Container(
                  height: AppSizeH.s304,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: ColorManager.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: AppSizeR.s15, color: ColorManager.shadow)
                    ],
                    borderRadius: BorderRadius.circular(AppSizeR.s15),
                  ),
                  child: SingleChildScrollView(
                    padding: EdgeInsets.symmetric(
                        vertical: AppSizeH.s8, horizontal: AppSizeW.s8),
                    child: Column(
                      children: context.read<SearchBloc>().contacts.map((e) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSizeW.s15, vertical: AppSizeH.s5),
                          child: InkWell(
                            onTap: () {
                              context
                                  .read<InputValueCreateOrderCubit>()
                                  .travelerController
                                  .text = "";
                              context
                                  .read<InputValueCreateOrderCubit>()
                                  .setShowTraveler(false);
                              context
                                  .read<InputValueCreateOrderCubit>()
                                  .addTravelersId(e);
                            },
                            child: BlocProvider.value(
                              value: context.read<InputValueCreateOrderCubit>(),
                              child: ContactSearchItemWidget(
                                model: e,
                                isTraveler: false,
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              )
            : context.read<InputValueCreateOrderCubit>().isShowTraveler &&
                    context
                        .read<InputValueCreateOrderCubit>()
                        .travelerController
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
                      child: const Text("لا يوجد معلومات"),
                    ),
                  )
                : const SizedBox();
      },
    );
  }
}

class SelectTravelerWidget extends StatefulWidget {
  const SelectTravelerWidget({super.key});

  @override
  State<SelectTravelerWidget> createState() => _SelectTravelerWidgetState();
}

class _SelectTravelerWidgetState extends State<SelectTravelerWidget> {
  Timer? _debounce;
  _onSearchTravellersChanged(String query) async {
    if (_debounce?.isActive ?? false) _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      context.read<InputValueCreateOrderCubit>().setShowTraveler(true);
      context.read<SearchBloc>().add(SearchEvent.searchContract(
          isTraveler: true,
          name: context
              .read<InputValueCreateOrderCubit>()
              .travelerController
              .text,
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
                  decoration:
                      const InputDecoration(hintText: "اضافة مسافرين..."),
                  onChanged: _onSearchTravellersChanged,
                  controller: context
                      .read<InputValueCreateOrderCubit>()
                      .travelerController,
                ),
              ),
            ),
            SizedBox(height: AppSizeH.s12),
            BlocBuilder(
              bloc: context.read<InputValueCreateOrderCubit>(),
              builder: (context, state) {
                return Visibility(
                  visible: context
                      .read<InputValueCreateOrderCubit>()
                      .travelersContact
                      .isNotEmpty,
                  child: Expanded(
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
                              "المسافرين",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            const Divider(),
                            Expanded(
                                child: SingleChildScrollView(
                              child: Column(
                                  children: context
                                      .read<InputValueCreateOrderCubit>()
                                      .travelersContact
                                      .map(
                                (traveler) {
                                  return Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: AppSizeW.s2),
                                    child: InkWell(
                                      onTap: () {
                                        context
                                            .read<InputValueCreateOrderCubit>()
                                            .removeTravelers(traveler);
                                      },
                                      child: Row(
                                        children: [
                                          Container(
                                            alignment: Alignment.center,
                                            width: AppSizeW.s15,
                                            height: AppSizeW.s15,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: ColorManager.black),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        AppSizeR.s3)),
                                            child: context
                                                    .read<
                                                        InputValueCreateOrderCubit>()
                                                    .travelers
                                                    .contains(
                                                        TravelerInputOrderModel(
                                                            travelId:
                                                                traveler.id))
                                                ? Icon(
                                                    Icons.check,
                                                    color:
                                                        ColorManager.secondary,
                                                    size: AppSizeSp.s12,
                                                  )
                                                : const SizedBox(),
                                          ),
                                          SizedBox(width: AppSizeW.s10),
                                          Text(
                                            "${traveler.name} (#${traveler.id})",
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ).toList()),
                            )),
                          ],
                        )),
                  ),
                );
              },
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
                return const TravellersItemsWidget();
              },
            );
          },
        ),
      ],
    );
  }
}
