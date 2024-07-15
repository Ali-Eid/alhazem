import 'package:alhazem/core/constants/color_manager.dart';
import 'package:alhazem/core/utils/extensions/extensions.dart';
import 'package:alhazem/core/widgets/toast.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/presentation/blocs/static_bloc/static_bloc.dart';
import 'package:alhazem/features/contacts/presentation/blocs/traveler_bloc/traveler_bloc.dart';
import 'package:alhazem/features/contacts/presentation/widgets/check_box_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:toastification/toastification.dart';
import '../../../../core/app/depndency_injection.dart';
import '../../../../core/constants/values_manager.dart';
import '../blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class CreateContractView extends StatefulWidget {
  const CreateContractView({super.key});

  @override
  State<CreateContractView> createState() => _CreateContractViewState();
}

class _CreateContractViewState extends State<CreateContractView> {
  final List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];
  late TravelerBloc travelerBloc;
  late InputValueCreateCubit inputValueCubit;
  @override
  void initState() {
    travelerBloc = instance<TravelerBloc>();
    inputValueCubit = InputValueCreateCubit(0);
    if (context.read<StaticBloc>().countries.isEmpty) {
      context.read<StaticBloc>().add(const StaticEvent.getCountries());
    } else {
      print(context.read<StaticBloc>().countries);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputValueCubit,
      builder: (context, state) {
        return SingleChildScrollView(
          padding: EdgeInsets.all(AppSizeW.s8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: AppSizeH.s22),
              // Info Section
              Padding(
                padding: EdgeInsets.all(AppSizeW.s15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.shadow, blurRadius: AppSizeR.s2)
                      ],
                      borderRadius: BorderRadius.circular(AppSizeR.s12)),
                  child: ExpansionPanelList(
                    // expandedHeaderPadding: EdgeInsets.all(AppSizeW.s15),
                    elevation: 0,
                    expansionCallback: (int index, bool isExpanded) {},
                    children: [
                      ExpansionPanel(
                        backgroundColor: Colors.white,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Padding(
                            padding: EdgeInsets.all(AppSizeW.s8),
                            child: Text("معلومات المسافر",
                                style: Theme.of(context).textTheme.titleMedium),
                          );
                        },
                        body: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: AppSizeW.s15,
                              end: AppSizeW.s15,
                              bottom: AppSizeH.s25),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  InputFieldWidget(
                                      labelText: "الأسم",
                                      controller:
                                          inputValueCubit.nameController),
                                  InputFieldWidget(
                                      labelText: "رقم الهاتف",
                                      controller:
                                          inputValueCubit.phoneController),
                                  InputFieldWidget(
                                      labelText: "رقم الواتس اب",
                                      controller:
                                          inputValueCubit.whatsAppController),
                                  BlocBuilder(
                                    bloc: context.read<StaticBloc>(),
                                    builder: (context, StaticState state) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizeW.s8),
                                        child: SizedBox(
                                          width: AppSizeW.s250,
                                          child: DropDownWidget(
                                              onChanged: (country) {
                                                inputValueCubit
                                                    .setCountry(country);
                                                context.read<StaticBloc>().add(
                                                      StaticEvent.getStates(
                                                          countryId:
                                                              country?.id ?? 0),
                                                    );
                                              },
                                              hintText: "",
                                              items: context
                                                  .read<StaticBloc>()
                                                  .countries,
                                              labelText: "البلد"),
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: AppSizeH.s15),
                              Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: AppSizeW.s8),
                                    child: SizedBox(
                                      width: AppSizeW.s250,
                                      child: BlocBuilder(
                                        bloc: context.read<StaticBloc>(),
                                        builder: (context, StaticState state) {
                                          return state.maybeMap(
                                            loaded: (value) {
                                              return DropDownWidget(
                                                  onChanged: (state) {
                                                    inputValueCubit
                                                        .setState(state);
                                                  },
                                                  items: value.states,
                                                  labelText: "المنطقة");
                                            },
                                            orElse: () {
                                              return const DropDownWidget(
                                                  items: [],
                                                  labelText: "المنطقة");
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                  ),
                                  InputFieldWidget(
                                      labelText: "المدينة",
                                      controller:
                                          inputValueCubit.cityController),
                                  InputFieldWidget(
                                      labelText: "الشارع",
                                      controller:
                                          inputValueCubit.streetController),
                                  InputFieldWidget(
                                      labelText: "الشارع2",
                                      controller:
                                          inputValueCubit.street2Controller),
                                ],
                              )
                            ],
                          ),
                        ),
                        isExpanded: true,
                      ),
                    ],
                  ),
                ),
              ),
              //Passport section
              Padding(
                padding: EdgeInsets.all(AppSizeW.s15),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s15),
                  decoration: BoxDecoration(
                      color: ColorManager.white,
                      boxShadow: [
                        BoxShadow(
                            color: ColorManager.shadow, blurRadius: AppSizeR.s2)
                      ],
                      borderRadius: BorderRadius.circular(AppSizeR.s12)),
                  child: ExpansionPanelList(
                    // expandedHeaderPadding: EdgeInsets.all(AppSizeW.s15),
                    elevation: 0,
                    expansionCallback: (int index, bool isExpanded) {},
                    children: [
                      ExpansionPanel(
                        backgroundColor: Colors.white,
                        headerBuilder: (BuildContext context, bool isExpanded) {
                          return Padding(
                            padding: EdgeInsets.all(AppSizeW.s8),
                            child: Text("معلومات جواز السفر",
                                style: Theme.of(context).textTheme.titleMedium),
                          );
                        },
                        body: Padding(
                          padding: EdgeInsetsDirectional.only(
                              start: AppSizeW.s15,
                              end: AppSizeW.s15,
                              bottom: AppSizeH.s25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                color: Colors.red,
                                child: const Text("معلومات باللغة العربية"),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InputFieldWidget(
                                          labelText: "الأسم",
                                          controller:
                                              inputValueCubit.nameController),
                                      InputFieldWidget(
                                          labelText: "رقم الهاتف",
                                          controller:
                                              inputValueCubit.phoneController),
                                      InputFieldWidget(
                                          labelText: "رقم الواتس اب",
                                          controller: inputValueCubit
                                              .whatsAppController),
                                      BlocBuilder(
                                        bloc: context.read<StaticBloc>(),
                                        builder: (context, StaticState state) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s8),
                                            child: SizedBox(
                                              width: AppSizeW.s250,
                                              child: DropDownWidget(
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
                                                  hintText: "",
                                                  items: context
                                                      .read<StaticBloc>()
                                                      .countries,
                                                  labelText: "البلد"),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  Row(
                                    children: [
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
                                                      onChanged: (state) {
                                                        inputValueCubit
                                                            .setState(state);
                                                      },
                                                      items: value.states,
                                                      labelText: "المنطقة");
                                                },
                                                orElse: () {
                                                  return const DropDownWidget(
                                                      items: [],
                                                      labelText: "المنطقة");
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      InputFieldWidget(
                                          labelText: "المدينة",
                                          controller:
                                              inputValueCubit.cityController),
                                      InputFieldWidget(
                                          labelText: "الشارع",
                                          controller:
                                              inputValueCubit.streetController),
                                      InputFieldWidget(
                                          labelText: "الشارع2",
                                          controller: inputValueCubit
                                              .street2Controller),
                                    ],
                                  )
                                ],
                              ),
                              SizedBox(height: AppSizeH.s15),
                              Container(
                                color: Colors.red,
                                child: const Text("معلومات باللغة الأجنبية"),
                              ),
                              Column(
                                children: [
                                  Row(
                                    children: [
                                      InputFieldWidget(
                                          labelText: "الأسم",
                                          controller:
                                              inputValueCubit.nameController),
                                      InputFieldWidget(
                                          labelText: "رقم الهاتف",
                                          controller:
                                              inputValueCubit.phoneController),
                                      InputFieldWidget(
                                          labelText: "رقم الواتس اب",
                                          controller: inputValueCubit
                                              .whatsAppController),
                                      BlocBuilder(
                                        bloc: context.read<StaticBloc>(),
                                        builder: (context, StaticState state) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s8),
                                            child: SizedBox(
                                              width: AppSizeW.s250,
                                              child: DropDownWidget(
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
                                                  hintText: "",
                                                  items: context
                                                      .read<StaticBloc>()
                                                      .countries,
                                                  labelText: "البلد"),
                                            ),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  Row(
                                    children: [
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
                                                      onChanged: (state) {
                                                        inputValueCubit
                                                            .setState(state);
                                                      },
                                                      items: value.states,
                                                      labelText: "المنطقة");
                                                },
                                                orElse: () {
                                                  return const DropDownWidget(
                                                      items: [],
                                                      labelText: "المنطقة");
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                      InputFieldWidget(
                                          labelText: "المدينة",
                                          controller:
                                              inputValueCubit.cityController),
                                      InputFieldWidget(
                                          labelText: "الشارع",
                                          controller:
                                              inputValueCubit.streetController),
                                      InputFieldWidget(
                                          labelText: "الشارع2",
                                          controller: inputValueCubit
                                              .street2Controller),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        isExpanded: true,
                      ),
                    ],
                  ),
                ),
              ),

              //Passport Section
            ],
          ),
        );
      },
    );
  }
}

//  Card(
//             elevation: 2,
//             child: Padding(
//               padding: EdgeInsets.all(AppSizeW.s12),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
                      // Text("معلومات المسافر",
                      //     style: Theme.of(context).textTheme.titleLarge),
//                       const CheckBoxWidget(label: "VIP")
//                     ],
//                   ),
//                   SizedBox(height: AppSizeH.s15),
//                   GridView(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                         mainAxisSpacing: AppSizeH.s12,
//                         childAspectRatio: 6,
//                         crossAxisCount: 5),
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "الاسم",
//                             labelText: "الاسم",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "رقم الهاتف",
//                             labelText: "رقم الهاتف",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "رقم الواتساب",
//                             labelText: "رقم الواتساب",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: const DropDownWidget(
//                             items: [],
//                             hintText: "البلد",
//                             labelText: "البلد",
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: const DropDownWidget(
//                             items: [],
//                             hintText: "المقاطعة",
//                             labelText: "المقاطعة",
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "المدينة",
//                             labelText: "المدينة",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "الشارع",
//                             labelText: "الشارع",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: InputFieldWidget(
//                             hintText: "الشارع2",
//                             labelText: "الشارع2",
//                             controller: TextEditingController(),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: const DropDownWidget(
//                             items: [],
//                             hintText: "المكتب",
//                             labelText: "المكتب",
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(horizontal: AppSizeW.s6),
//                         child: SizedBox(
//                           width: AppSizeW.s226,
//                           child: const DropDownWidget(
//                             items: [],
//                             hintText: "نوع المسافر",
//                             labelText: "نوع المسافر",
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//           ),
         