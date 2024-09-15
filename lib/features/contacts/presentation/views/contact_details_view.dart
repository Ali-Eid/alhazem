import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/contacts/domain/models/contact_details_model/contact_details_model.dart';
import 'package:alhazem/features/contacts/domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import 'package:alhazem/features/contacts/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:alhazem/features/contacts/presentation/blocs/traveler_bloc/traveler_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/app/depndency_injection.dart';
import '../../../../core/bases/enums/entity_type.dart';
import '../../../../core/bases/enums/gender_type.dart';
import '../../../../core/bases/models/static_models/static_model.dart';
import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../blocs/static_bloc/static_bloc.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class ContactDetailsView extends StatefulWidget {
  final int contactId;
  const ContactDetailsView({super.key, required this.contactId});

  @override
  State<ContactDetailsView> createState() => _ContactDetailsViewState();
}

class _ContactDetailsViewState extends State<ContactDetailsView> {
  late ContactBloc contactBloc;

  @override
  void initState() {
    contactBloc = instance<ContactBloc>()
      ..add(ContactEvent.getContactById(contactId: widget.contactId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: contactBloc,
      builder: (context, ContactState state) {
        return state.maybeMap(
          loading: (value) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          },
          loadedContactDetails: (value) {
            return ShowContactDetailsView(model: value.contact.data.first);
          },
          orElse: () {
            return const SizedBox();
          },
        );
      },
    );
  }
}

class ShowContactDetailsView extends StatefulWidget {
  final ContactDetailsModel model;
  const ShowContactDetailsView({
    super.key,
    required this.model,
  });

  @override
  State<ShowContactDetailsView> createState() => _ShowContactDetailsViewState();
}

class _ShowContactDetailsViewState extends State<ShowContactDetailsView> {
  late InputValueCreateCubit inputValueCubit;
  @override
  void initState() {
    context
        .read<StaticBloc>()
        .add(StaticEvent.getStates(countryId: widget.model.country.id));
    inputValueCubit = InputValueCreateCubit(0);

    inputValueCubit.editContact(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: inputValueCubit,
      builder: (context, state) {
        return Scaffold(
            appBar: AppBar(
              actions: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppSizeW.s30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                          width: AppSizeW.s200,
                          child: ElevatedButton(
                              onPressed: () {
                                context.goNamed(
                                    RoutesNames.editContactDetailsRoute,
                                    pathParameters: {
                                      "id": "${widget.model.id}"
                                    },
                                    extra: [inputValueCubit, widget.model]
                                        as List);
                              },
                              child: const Text("تعديل المعلومات")))
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
                                      Text("معلومات المسافر",
                                          style: Theme.of(context)
                                              .textTheme
                                              .titleMedium),
                                      Row(
                                        children: [
                                          Text(
                                            "VIP",
                                            style: Theme.of(context)
                                                .textTheme
                                                .titleMedium,
                                          ),
                                          Checkbox(
                                            value: inputValueCubit.isVip,
                                            onChanged: null,
                                            side: BorderSide(
                                                width: AppSizeW.s1_5,
                                                color: ColorManager.primary),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: AppSizeH.s15),
                                  Wrap(
                                    runSpacing: AppSizeH.s15,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      InputFieldWidget(
                                          isReadOnly: true,
                                          validator: (value) {
                                            if (value != null &&
                                                value.isEmpty) {
                                              return "الأسم لا يمكن ان يكون فارغ";
                                            }
                                            return null;
                                          },
                                          labelText: "الأسم",
                                          controller: inputValueCubit
                                              .nameIdentityController),
                                      InputFieldWidget(
                                          isReadOnly: true,
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
                                          controller:
                                              inputValueCubit.phoneController),
                                      InputFieldWidget(
                                          isReadOnly: true,
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
                                        builder: (context, StaticState state) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s8),
                                            child: SizedBox(
                                              width: AppSizeW.s250,
                                              child: DropDownWidget(
                                                  hintSearchText: "البحث...",
                                                  selectedValue: inputValueCubit
                                                      .countrySelected,
                                                  validator: (value) {
                                                    if (value == null) {
                                                      return "الرجاء اختيار البلد";
                                                    }
                                                    return null;
                                                  },
                                                  items: const [],
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
                                          child: DropDownWidget(
                                              hintSearchText: "البحث...",
                                              selectedValue:
                                                  inputValueCubit.stateSelected,
                                              validator: (value) {
                                                if (value == null) {
                                                  return "الرجاء اختيار المدينة";
                                                }
                                                return null;
                                              },
                                              items: const [],
                                              labelText: "المدينة"),
                                        ),
                                      ),
                                      InputFieldWidget(
                                          isReadOnly: true,
                                          validator: (value) {
                                            if (value != null &&
                                                value.isEmpty) {
                                              return "المنطقة لا يمكن ان يكون فارغة";
                                            }
                                            return null;
                                          },
                                          labelText: "المنطقة",
                                          controller:
                                              inputValueCubit.cityController),
                                      InputFieldWidget(
                                          isReadOnly: true,
                                          labelText: "الشارع",
                                          controller:
                                              inputValueCubit.streetController),
                                      InputFieldWidget(
                                          isReadOnly: true,
                                          labelText: "الشارع2",
                                          controller: inputValueCubit
                                              .street2Controller),
                                      BlocBuilder(
                                        bloc: context.read<StaticBloc>(),
                                        builder: (context, StaticState state) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s8),
                                            child: SizedBox(
                                              width: AppSizeW.s250,
                                              child: DropDownWidget(
                                                  hintSearchText: "البحث...",
                                                  selectedValue: inputValueCubit
                                                      .officeSelected,
                                                  validator: (value) {
                                                    if (value == null) {
                                                      return "الرجاء اختيار المكتب";
                                                    }
                                                    return null;
                                                  },
                                                  items: const [],
                                                  labelText: "المكتب"),
                                            ),
                                          );
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: AppSizeW.s8),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: TextField(
                                                readOnly: true,
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
                                                                start: AppSizeW
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
                          SizedBox(height: AppSizeH.s25), //Passport section
                          widget.model.type == EntityType.person.name
                              ? Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: AppSizeH.s15),
                                      decoration: BoxDecoration(
                                          color: ColorManager.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorManager.shadow,
                                                blurRadius: AppSizeR.s2)
                                          ],
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s12)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("معلومات جواز السفر",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: AppSizeH.s15),
                                          AnimatedSwitcher(
                                            switchInCurve: Curves.linear,
                                            switchOutCurve: Curves.linear,
                                            reverseDuration: const Duration(
                                                milliseconds: 500),
                                            duration: const Duration(
                                                milliseconds: 500),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical:
                                                                    AppSizeH.s8,
                                                                horizontal:
                                                                    AppSizeW
                                                                        .s15),
                                                        decoration: BoxDecoration(
                                                            color: ColorManager
                                                                .primary,
                                                            borderRadius: BorderRadiusDirectional.only(
                                                                topEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12),
                                                                bottomEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12))),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "معلومات باللغة العربية",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .displayMedium!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          AppSizeSp
                                                                              .s12),
                                                            ),
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(height: AppSizeH.s10),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: AppSizeW.s15),
                                                  child: Wrap(
                                                    runSpacing: AppSizeH.s15,
                                                    children: [
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الأسم لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "الأسم",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[ء-ي\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .namePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الكنية لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "الكنية",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[ء-ي\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .surnamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "اسم الاب لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "الاب",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[ء-ي\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .fatherNamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "اسم الام لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "الام",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[ء-ي\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .motherNamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "مكان الولادة لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "مكان الولادة",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[ء-ي\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .birthPlacePassportController),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: AppSizeH.s15),
                                                Row(
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical:
                                                                    AppSizeH.s8,
                                                                horizontal:
                                                                    AppSizeW
                                                                        .s15),
                                                        decoration: BoxDecoration(
                                                            color: ColorManager
                                                                .primary,
                                                            borderRadius: BorderRadiusDirectional.only(
                                                                topEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12),
                                                                bottomEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12))),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "معلومات باللغة الأجنبية",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .displayMedium!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          AppSizeSp
                                                                              .s12),
                                                            ),
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(height: AppSizeH.s10),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: AppSizeW.s15),
                                                  child: Wrap(
                                                    runSpacing: AppSizeH.s15,
                                                    children: [
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الأسم لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "Name",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[a-zA-Z\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .eNamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الكنية لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "Surname",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[a-zA-Z\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .eSurnamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "اسم الاب لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "Father name",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[a-zA-Z\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .eFatherNamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "اسم الام لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "Mother name",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[a-zA-Z\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .eMotherNamePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "مكان الولادة لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "Birth place",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .allow(RegExp(
                                                                    r'[a-zA-Z\s]')),
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .eBirthPlacePassportController),
                                                    ],
                                                  ),
                                                ),
                                                SizedBox(height: AppSizeH.s10),
                                                Row(
                                                  children: [
                                                    Container(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                vertical:
                                                                    AppSizeH.s8,
                                                                horizontal:
                                                                    AppSizeW
                                                                        .s15),
                                                        decoration: BoxDecoration(
                                                            color: ColorManager
                                                                .primary,
                                                            borderRadius: BorderRadiusDirectional.only(
                                                                topEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12),
                                                                bottomEnd: Radius
                                                                    .circular(
                                                                        AppSizeR
                                                                            .s12))),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              "معلومات عامة",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .displayMedium!
                                                                  .copyWith(
                                                                      fontSize:
                                                                          AppSizeSp
                                                                              .s12),
                                                            ),
                                                          ],
                                                        )),
                                                  ],
                                                ),
                                                SizedBox(height: AppSizeH.s10),
                                                Padding(
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: AppSizeW.s15),
                                                  child: Wrap(
                                                    runSpacing: AppSizeH.s15,
                                                    children: [
                                                      InputFieldWidget(
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الرجاء تحديد تاريخ الولادة";
                                                            }
                                                            return null;
                                                          },
                                                          isReadOnly: true,
                                                          onTap: null,
                                                          labelText:
                                                              "تاريخ الولادة",
                                                          controller:
                                                              inputValueCubit
                                                                  .dobPassportController),
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    AppSizeW
                                                                        .s8),
                                                        child: SizedBox(
                                                          width: AppSizeW.s250,
                                                          child: DropDownWidget(
                                                              notSearch: false,
                                                              hintSearchText:
                                                                  "البحث...",
                                                              selectedValue:
                                                                  StaticModel(
                                                                      name: widget
                                                                          .model
                                                                          .identityGender),
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                    null) {
                                                                  return "الرجاء اختيار الجنس";
                                                                }
                                                                return null;
                                                              },
                                                              items: const [],
                                                              labelText:
                                                                  "الجنس"),
                                                        ),
                                                      ),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "رقم جواز السفر لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "رقم جواز السفر",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .digitsOnly
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .numberPassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "مكان الاصدار لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "مكان الاصدار",
                                                          controller:
                                                              inputValueCubit
                                                                  .placeIssuePassportController),
                                                      InputFieldWidget(
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الرجاء تحديد تاريخ الاصدار";
                                                            }
                                                            return null;
                                                          },
                                                          isReadOnly: true,
                                                          onTap: null,
                                                          labelText:
                                                              "تاريخ الاصدار",
                                                          controller:
                                                              inputValueCubit
                                                                  .issuedDatePassportController),
                                                      InputFieldWidget(
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الرجاء تحديد تاريخ الانتهاء";
                                                            }
                                                            return null;
                                                          },
                                                          isReadOnly: true,
                                                          onTap: null,
                                                          labelText:
                                                              "تاريخ الانتهاء",
                                                          controller:
                                                              inputValueCubit
                                                                  .expirationDatePassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "الرقم الوطني لا يمكن ان يكون فارغ";
                                                            }
                                                            return null;
                                                          },
                                                          labelText:
                                                              "الرقم الوطني",
                                                          inputFormatters: [
                                                            FilteringTextInputFormatter
                                                                .digitsOnly
                                                          ],
                                                          controller:
                                                              inputValueCubit
                                                                  .nationalNumberPassportController),
                                                      InputFieldWidget(
                                                          isReadOnly: true,
                                                          validator: (value) {
                                                            if (value != null &&
                                                                value.isEmpty) {
                                                              return "المهنة لا يمكن ان يكون فارغة";
                                                            }
                                                            return null;
                                                          },
                                                          labelText: "المهنة",
                                                          controller:
                                                              inputValueCubit
                                                                  .jobPassportController),
                                                    ],
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(height: AppSizeH.s25),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          vertical: AppSizeH.s15),
                                      decoration: BoxDecoration(
                                          color: ColorManager.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorManager.shadow,
                                                blurRadius: AppSizeR.s2)
                                          ],
                                          borderRadius: BorderRadius.circular(
                                              AppSizeR.s12)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: AppSizeW.s15),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("معلومات الهوية",
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: AppSizeH.s15),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: AppSizeW.s15),
                                                child: Wrap(
                                                  runSpacing: AppSizeH.s15,
                                                  children: [
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الأسم لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الأسم",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .nameIdentityController),
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الكنية لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الكنية",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .surnameIdentityController),
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الاب لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الاب",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .fatherNameIdentityController),
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "اسم الام لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText: "الام",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .motherNameIdentityController),
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "مكان الولادة لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "مكان الولادة",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .allow(RegExp(
                                                                  r'[ء-ي\s]')),
                                                        ],
                                                        controller: inputValueCubit
                                                            .birthPlaceIdentityController),
                                                    InputFieldWidget(
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرجاء تحديد تاريخ الولادة";
                                                          }
                                                          return null;
                                                        },
                                                        isReadOnly: true,
                                                        onTap: null,
                                                        labelText:
                                                            "تاريخ الولادة",
                                                        controller: inputValueCubit
                                                            .dobIdentityController),
                                                    InputFieldWidget(
                                                        isReadOnly: true,
                                                        validator: (value) {
                                                          if (value != null &&
                                                              value.isEmpty) {
                                                            return "الرقم الوطني لا يمكن ان يكون فارغ";
                                                          }
                                                          return null;
                                                        },
                                                        labelText:
                                                            "الرقم الوطني",
                                                        inputFormatters: [
                                                          FilteringTextInputFormatter
                                                              .digitsOnly
                                                        ],
                                                        controller: inputValueCubit
                                                            .nationalNumberIdentityController),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(height: AppSizeH.s10),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              : const SizedBox()
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ));
      },
    );
  }
}
