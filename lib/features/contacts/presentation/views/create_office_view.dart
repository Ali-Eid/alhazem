import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/entity_type.dart';
import '../../../../core/bases/enums/gender_type.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../../core/widgets/toast.dart';
import '../../domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../blocs/static_bloc/static_bloc.dart';
import '../blocs/traveler_bloc/traveler_bloc.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class CreateOfficeView extends StatefulWidget {
  const CreateOfficeView({super.key});

  @override
  State<CreateOfficeView> createState() => _CreateOfficeViewState();
}

class _CreateOfficeViewState extends State<CreateOfficeView> {
  late TravelerBloc travelerBloc;
  late InputValueCreateCubit inputValueCubit;
  @override
  void initState() {
    travelerBloc = instance<TravelerBloc>();
    inputValueCubit = InputValueCreateCubit(0);
    if (context.read<StaticBloc>().countries.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getCountries());
    }
    if (context.read<StaticBloc>().offices.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getOffices());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputValueCubit,
      builder: (context, state) {
        return Form(
            key: inputValueCubit.formKey,
            child: Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: AppSizeW.s200,
                          child: BlocBuilder(
                            bloc: travelerBloc,
                            builder: (context, TravelerState state) {
                              return state.maybeMap(
                                loading: (value) {
                                  return const LinearProgressIndicator();
                                },
                                orElse: () {
                                  return ElevatedButton(
                                      onPressed: () {
                                        if (inputValueCubit
                                            .formKey.currentState!
                                            .validate()) {
                                          travelerBloc.add(TravelerEvent.createTraveler(
                                              input: InputCreateTravelerModel(
                                                  name: inputValueCubit
                                                      .nameController.text,
                                                  phoneNumber: inputValueCubit
                                                      .phoneController.text,
                                                  whatsAppNumber: inputValueCubit
                                                      .whatsAppController.text,
                                                  countryId: inputValueCubit
                                                          .countrySelected
                                                          ?.id ??
                                                      0,
                                                  stateId: inputValueCubit
                                                          .stateSelected?.id ??
                                                      0,
                                                  officeId: inputValueCubit.officeSelected?.id == 0
                                                      ? null
                                                      : inputValueCubit.officeSelected?.id,
                                                  vip: inputValueCubit.isVip ?? false,
                                                  type: EntityType.company.name,
                                                  city: inputValueCubit.cityController.text,
                                                  street: inputValueCubit.streetController.text,
                                                  street2: inputValueCubit.street2Controller.text,
                                                  reference: inputValueCubit.noteController.text)));
                                        }
                                      },
                                      child: const Text("انشاء مكتب"));
                                },
                              );
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              body: Column(
                children: [
                  SizedBox(height: AppSizeH.s12),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.all(AppSizeW.s8),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: AppSizeW.s22),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Info Section
                            Container(
                                width: double.infinity,
                                padding: EdgeInsets.symmetric(
                                    horizontal: AppSizeW.s15,
                                    vertical: AppSizeH.s25),
                                decoration: BoxDecoration(
                                    color: ColorManager.white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: ColorManager.shadow,
                                          blurRadius: AppSizeR.s2)
                                    ],
                                    borderRadius:
                                        BorderRadius.circular(AppSizeR.s12)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("معلومات المكتب",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium),
                                      ],
                                    ),
                                    SizedBox(height: AppSizeH.s15),
                                    Wrap(
                                      runSpacing: AppSizeH.s15,
                                      alignment: WrapAlignment.start,
                                      children: [
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "الأسم لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "الأسم",
                                            controller:
                                                inputValueCubit.nameController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "رقم الهاتف لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "رقم الهاتف",
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: inputValueCubit
                                                .phoneController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "رقم الواتس اب لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "رقم الواتس اب",
                                            inputFormatters: [
                                              FilteringTextInputFormatter
                                                  .digitsOnly
                                            ],
                                            controller: inputValueCubit
                                                .whatsAppController),
                                        BlocBuilder(
                                          bloc: context.read<StaticBloc>(),
                                          builder:
                                              (context, StaticState state) {
                                            return Padding(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: AppSizeW.s8),
                                              child: SizedBox(
                                                width: AppSizeW.s250,
                                                child: DropDownWidget(
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "الرجاء اختيار البلد";
                                                      }
                                                      return null;
                                                    },
                                                    onChanged: (country) {
                                                      inputValueCubit
                                                          .setCountry(country);
                                                      context
                                                          .read<StaticBloc>()
                                                          .add(
                                                            StaticEvent.getStates(
                                                                countryId:
                                                                    country?.id ??
                                                                        0),
                                                          );
                                                    },
                                                    items: context
                                                        .read<StaticBloc>()
                                                        .countries,
                                                    labelText: "البلد"),
                                              ),
                                            );
                                          },
                                        ),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s8),
                                          child: SizedBox(
                                            width: AppSizeW.s250,
                                            child: BlocBuilder(
                                              bloc: context.read<StaticBloc>(),
                                              builder:
                                                  (context, StaticState state) {
                                                return state.maybeMap(
                                                  loaded: (value) {
                                                    return DropDownWidget(
                                                        // validator: (value) {
                                                        //   if (value == null) {
                                                        //     return "الرجاء اختيار المنطقة";
                                                        //   }
                                                        //   return null;
                                                        // },
                                                        onChanged: (state) {
                                                          inputValueCubit
                                                              .setState(state);
                                                        },
                                                        items: value.states,
                                                        labelText: "المنطقة");
                                                  },
                                                  orElse: () {
                                                    return DropDownWidget(
                                                        validator: (value) {
                                                          if (value == null) {
                                                            return "الرجاء اختيار المنطقة";
                                                          }
                                                          return null;
                                                        },
                                                        items: const [],
                                                        labelText: "المنطقة");
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                        ),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "المدينة لا يمكن ان يكون فارغة";
                                              }
                                              return null;
                                            },
                                            labelText: "المدينة",
                                            controller:
                                                inputValueCubit.cityController),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "الشارع لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "الشارع",
                                            controller: inputValueCubit
                                                .streetController),
                                        InputFieldWidget(
                                            labelText: "الشارع2",
                                            controller: inputValueCubit
                                                .street2Controller),
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: AppSizeW.s8),
                                          child: Row(
                                            children: [
                                              Expanded(
                                                child: TextField(
                                                  controller: inputValueCubit
                                                      .noteController,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyMedium,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .only(
                                                                  start:
                                                                      AppSizeW
                                                                          .s10,
                                                                  end: AppSizeW
                                                                      .s4),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Text(
                                                            "ملاحظات:",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .headlineLarge,
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )),
                            SizedBox(height: AppSizeH.s25),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ));
      },
    );
  }
}
