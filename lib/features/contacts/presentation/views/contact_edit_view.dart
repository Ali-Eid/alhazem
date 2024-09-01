import 'package:alhazem/features/contacts/domain/models/contact_details_model/contact_details_model.dart';
import 'package:alhazem/features/contacts/presentation/blocs/contact_bloc/contact_bloc.dart';
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
import '../../../../core/widgets/alert_dialog_widget.dart';
import '../../../settings/presentation/views/settings_view.dart';
import '../../domain/models/input_create_traveler_model/input_create_traveler_model.dart';
import '../blocs/input_value_create_traveler_cubit/input_value_create_cubit.dart';
import '../blocs/static_bloc/static_bloc.dart';
import '../blocs/traveler_bloc/traveler_bloc.dart';
import '../widgets/drop_down_widget.dart';
import '../widgets/input_field_widget.dart';

class ContactEditView extends StatefulWidget {
  final ContactDetailsModel model;
  const ContactEditView({
    super.key,
    required this.model,
  });

  @override
  State<ContactEditView> createState() => _ContactEditViewState();
}

class _ContactEditViewState extends State<ContactEditView> {
  late TravelerBloc travelerBloc;
  @override
  void initState() {
    travelerBloc = instance<TravelerBloc>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: context.read<InputValueCreateCubit>(),
      builder: (context, state) {
        return BlocListener(
          bloc: travelerBloc,
          listener: (context, TravelerState state) {
            state.mapOrNull(
              loaded: (value) {
                Future.delayed(
                  const Duration(milliseconds: 200),
                  () {
                    context.pop();
                    context.read<ContactBloc>().add(
                        ContactEvent.editContact(model: value.contact.data));
                  },
                );
                // context
                //     .read<InputValueCreateCubit>()
                //     .editContact(ContactDetailsModel(
                //       id: widget.model.id,
                //       country: context
                //               .read<InputValueCreateCubit>()
                //               .countrySelected ??
                //           const StaticModel(),
                //       city: context
                //           .read<InputValueCreateCubit>()
                //           .cityController
                //           .text,
                //       name: context
                //           .read<InputValueCreateCubit>()
                //           .nameController
                //           .text,
                //       office: context
                //               .read<InputValueCreateCubit>()
                //               .officeSelected ??
                //           const StaticModel(),
                //       identityDateOfBirthday: context
                //           .read<InputValueCreateCubit>()
                //           .dobIdentityController
                //           .text,
                //       identityFather: context
                //           .read<InputValueCreateCubit>()
                //           .fatherNameIdentityController
                //           .text,
                //       identityGender: context
                //               .read<InputValueCreateCubit>()
                //               .genderSelected
                //               ?.name ??
                //           GenderType.male.name,
                //       identityMother: context
                //           .read<InputValueCreateCubit>()
                //           .motherNameIdentityController
                //           .text,
                //       identityNationalNumber: context
                //           .read<InputValueCreateCubit>()
                //           .nationalNumberIdentityController
                //           .text,
                //       identityPlaceOfBirthday: context
                //           .read<InputValueCreateCubit>()
                //           .birthPlaceIdentityController
                //           .text,
                //       identitySurname: context
                //           .read<InputValueCreateCubit>()
                //           .surnameIdentityController
                //           .text,
                //       isLead: widget.model.isLead,
                //       phone: context
                //           .read<InputValueCreateCubit>()
                //           .phoneController
                //           .text,
                //       whatsappNumber: context
                //           .read<InputValueCreateCubit>()
                //           .whatsAppController
                //           .text,
                //       type: widget.model.type == EntityType.person.name
                //           ? EntityType.person.name
                //           : EntityType.company.name,
                //     ));
              },
            );
          },
          child: Scaffold(
              appBar: AppBar(
                leading: IconButton(
                    onPressed: () {
                      context.pop();
                      context
                          .read<InputValueCreateCubit>()
                          .editContact(widget.model);
                    },
                    icon: const Icon(Icons.arrow_back)),
                actions: [
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s30),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            SizedBox(
                              width: AppSizeW.s200,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                  backgroundColor: WidgetStateProperty.all(
                                    ColorManager.error,
                                  ),
                                ),
                                onPressed: () {
                                  context.pop();
                                  context
                                      .read<InputValueCreateCubit>()
                                      .editContact(widget.model);
                                },
                                child: const Text("الغاء"),
                              ),
                            ),
                            SizedBox(width: AppSizeW.s16),
                            SizedBox(
                                width: AppSizeW.s200,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    await showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (_) {
                                        return MultiBlocProvider(
                                          providers: [
                                            BlocProvider.value(
                                                value: context.read<
                                                    InputValueCreateCubit>()),
                                            BlocProvider.value(
                                                value: travelerBloc)
                                          ],
                                          child: AlertDialogWidget(
                                              title: "حفظ التعديلات",
                                              content: SaveEditWidget(
                                                type: widget.model.type,
                                                id: widget.model.id,
                                              )),
                                        );
                                        // return const CreatePersonDialog();
                                      },
                                    );
                                  },
                                  child: const Text("حفظ"),
                                )),
                          ])),
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
                                              value: context
                                                  .read<InputValueCreateCubit>()
                                                  .isVip,
                                              onChanged: (value) {
                                                context
                                                    .read<
                                                        InputValueCreateCubit>()
                                                    .setVip(value);
                                              },
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
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "الأسم لا يمكن ان يكون فارغ";
                                              }
                                              return null;
                                            },
                                            labelText: "الأسم",
                                            controller: context
                                                .read<InputValueCreateCubit>()
                                                .nameIdentityController),
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
                                            controller: context
                                                .read<InputValueCreateCubit>()
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
                                            controller: context
                                                .read<InputValueCreateCubit>()
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
                                                    hintSearchText: "البحث...",
                                                    selectedValue: context
                                                        .read<
                                                            InputValueCreateCubit>()
                                                        .countrySelected,
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "الرجاء اختيار البلد";
                                                      }
                                                      return null;
                                                    },
                                                    onChanged: (country) {
                                                      context
                                                          .read<
                                                              InputValueCreateCubit>()
                                                          .setCountry(country);
                                                      context
                                                          .read<
                                                              InputValueCreateCubit>()
                                                          .setState(null);
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
                                                bloc:
                                                    context.read<StaticBloc>(),
                                                builder: (context,
                                                    StaticState state) {
                                                  return state.maybeMap(
                                                    loaded: (value) {
                                                      return DropDownWidget(
                                                          hintSearchText:
                                                              "البحث...",
                                                          selectedValue: context
                                                              .read<
                                                                  InputValueCreateCubit>()
                                                              .stateSelected,
                                                          onChanged: (state) {
                                                            context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .setState(
                                                                    state);
                                                          },
                                                          items: value.states,
                                                          labelText: "المدينة");
                                                    },
                                                    orElse: () {
                                                      return DropDownWidget(
                                                          hintSearchText:
                                                              "البحث...",
                                                          validator: (value) {
                                                            if (value == null) {
                                                              return "الرجاء اختيار المدينة";
                                                            }
                                                            return null;
                                                          },
                                                          items: const [],
                                                          labelText: "المدينة");
                                                    },
                                                  );
                                                },
                                              ),
                                            )),
                                        InputFieldWidget(
                                            validator: (value) {
                                              if (value != null &&
                                                  value.isEmpty) {
                                                return "المنطقة لا يمكن ان يكون فارغة";
                                              }
                                              return null;
                                            },
                                            labelText: "المنطقة",
                                            controller: context
                                                .read<InputValueCreateCubit>()
                                                .cityController),
                                        InputFieldWidget(

                                            // validator: (value) {
                                            //   if (value != null &&
                                            //       value.isEmpty) {
                                            //     return "الشارع لا يمكن ان يكون فارغ";
                                            //   }
                                            //   return null;
                                            // },
                                            labelText: "الشارع",
                                            controller: context
                                                .read<InputValueCreateCubit>()
                                                .streetController),
                                        InputFieldWidget(
                                            labelText: "الشارع2",
                                            controller: context
                                                .read<InputValueCreateCubit>()
                                                .street2Controller),
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
                                                    hintSearchText: "البحث...",
                                                    validator: (value) {
                                                      if (value == null) {
                                                        return "الرجاء اختيار المكتب";
                                                      }
                                                      return null;
                                                    },
                                                    onChanged: (office) {
                                                      context
                                                          .read<
                                                              InputValueCreateCubit>()
                                                          .setOffice(office);
                                                    },
                                                    items: context
                                                        .read<StaticBloc>()
                                                        .offices,
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
                                                  controller: context
                                                      .read<
                                                          InputValueCreateCubit>()
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
                            SizedBox(height: AppSizeH.s25), //Passport section
                            widget.model.type == EntityType.person.name
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                                                  vertical: AppSizeH
                                                                      .s8,
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s15),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorManager
                                                                      .primary,
                                                              borderRadius: BorderRadiusDirectional.only(
                                                                  topEnd: Radius
                                                                      .circular(
                                                                          AppSizeR
                                                                              .s12),
                                                                  bottomEnd: Radius
                                                                      .circular(
                                                                          AppSizeR.s12))),
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
                                                                            AppSizeSp.s12),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s10),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                AppSizeW.s15),
                                                    child: Wrap(
                                                      runSpacing: AppSizeH.s15,
                                                      children: [
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .namePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .surnamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .fatherNamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .motherNamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .birthPlacePassportController),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s15),
                                                  Row(
                                                    children: [
                                                      Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: AppSizeH
                                                                      .s8,
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s15),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorManager
                                                                      .primary,
                                                              borderRadius: BorderRadiusDirectional.only(
                                                                  topEnd: Radius
                                                                      .circular(
                                                                          AppSizeR
                                                                              .s12),
                                                                  bottomEnd: Radius
                                                                      .circular(
                                                                          AppSizeR.s12))),
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
                                                                            AppSizeSp.s12),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s10),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                AppSizeW.s15),
                                                    child: Wrap(
                                                      runSpacing: AppSizeH.s15,
                                                      children: [
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .eNamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "الكنية لا يمكن ان يكون فارغ";
                                                              }
                                                              return null;
                                                            },
                                                            labelText:
                                                                "Surname",
                                                            inputFormatters: [
                                                              FilteringTextInputFormatter
                                                                  .allow(RegExp(
                                                                      r'[a-zA-Z\s]')),
                                                            ],
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .eSurnamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .eFatherNamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .eMotherNamePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .eBirthPlacePassportController),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s10),
                                                  Row(
                                                    children: [
                                                      Container(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  vertical: AppSizeH
                                                                      .s8,
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s15),
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorManager
                                                                      .primary,
                                                              borderRadius: BorderRadiusDirectional.only(
                                                                  topEnd: Radius
                                                                      .circular(
                                                                          AppSizeR
                                                                              .s12),
                                                                  bottomEnd: Radius
                                                                      .circular(
                                                                          AppSizeR.s12))),
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
                                                                            AppSizeSp.s12),
                                                              ),
                                                            ],
                                                          )),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s10),
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                AppSizeW.s15),
                                                    child: Wrap(
                                                      runSpacing: AppSizeH.s15,
                                                      children: [
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "الرجاء تحديد تاريخ الولادة";
                                                              }
                                                              return null;
                                                            },
                                                            isReadOnly: true,
                                                            onTap: () async {
                                                              DateTime?
                                                                  selectedDate =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDatePickerMode:
                                                                    DatePickerMode
                                                                        .year,
                                                                initialEntryMode:
                                                                    DatePickerEntryMode
                                                                        .calendarOnly,
                                                                firstDate:
                                                                    DateTime(
                                                                        1900),
                                                                lastDate:
                                                                    DateTime
                                                                        .now(),
                                                              );
                                                              context
                                                                  .read<
                                                                      InputValueCreateCubit>()
                                                                  .setDob(
                                                                      selectedDate);
                                                            },
                                                            labelText:
                                                                "تاريخ الولادة",
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .dobPassportController),
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s8),
                                                          child: SizedBox(
                                                            width:
                                                                AppSizeW.s250,
                                                            child:
                                                                DropDownWidget(
                                                              notSearch: false,
                                                              hintSearchText:
                                                                  "البحث...",
                                                              selectedValue: context
                                                                  .read<
                                                                      InputValueCreateCubit>()
                                                                  .genderSelected,
                                                              validator:
                                                                  (value) {
                                                                if (value ==
                                                                    null) {
                                                                  return "الرجاء اختيار الجنس";
                                                                }
                                                                return null;
                                                              },
                                                              onChanged:
                                                                  (gender) {
                                                                context
                                                                    .read<
                                                                        InputValueCreateCubit>()
                                                                    .setGender(
                                                                        gender);
                                                              },
                                                              items: [
                                                                StaticModel(
                                                                    id: GenderType
                                                                        .male
                                                                        .index,
                                                                    name: GenderType
                                                                        .male
                                                                        .name),
                                                                StaticModel(
                                                                    id: GenderType
                                                                        .female
                                                                        .index,
                                                                    name: GenderType
                                                                        .female
                                                                        .name)
                                                              ],
                                                              labelText:
                                                                  "الجنس",
                                                            ),
                                                          ),
                                                        ),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .numberPassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "مكان الاصدار لا يمكن ان يكون فارغ";
                                                              }
                                                              return null;
                                                            },
                                                            labelText:
                                                                "مكان الاصدار",
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .placeIssuePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "الرجاء تحديد تاريخ الاصدار";
                                                              }
                                                              return null;
                                                            },
                                                            isReadOnly: true,
                                                            onTap: () async {
                                                              DateTime?
                                                                  selectedDate =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDatePickerMode:
                                                                    DatePickerMode
                                                                        .year,
                                                                initialEntryMode:
                                                                    DatePickerEntryMode
                                                                        .calendarOnly,
                                                                firstDate:
                                                                    DateTime(
                                                                        1900),
                                                                lastDate:
                                                                    DateTime
                                                                        .now(),
                                                              );
                                                              context
                                                                  .read<
                                                                      InputValueCreateCubit>()
                                                                  .setIssuedDate(
                                                                      selectedDate);
                                                            },
                                                            labelText:
                                                                "تاريخ الاصدار",
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .issuedDatePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "الرجاء تحديد تاريخ الانتهاء";
                                                              }
                                                              return null;
                                                            },
                                                            isReadOnly: true,
                                                            onTap: () async {
                                                              DateTime?
                                                                  selectedDate =
                                                                  await showDatePicker(
                                                                context:
                                                                    context,
                                                                initialDatePickerMode:
                                                                    DatePickerMode
                                                                        .year,
                                                                initialEntryMode:
                                                                    DatePickerEntryMode
                                                                        .calendarOnly,
                                                                firstDate:
                                                                    DateTime(
                                                                        1900),
                                                                lastDate:
                                                                    DateTime(
                                                                        2100),
                                                              );
                                                              context
                                                                  .read<
                                                                      InputValueCreateCubit>()
                                                                  .setExpirationDate(
                                                                      selectedDate);
                                                            },
                                                            labelText:
                                                                "تاريخ الانتهاء",
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .expirationDatePassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
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
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
                                                                .nationalNumberPassportController),
                                                        InputFieldWidget(
                                                            validator: (value) {
                                                              if (value !=
                                                                      null &&
                                                                  value
                                                                      .isEmpty) {
                                                                return "المهنة لا يمكن ان يكون فارغة";
                                                              }
                                                              return null;
                                                            },
                                                            labelText: "المهنة",
                                                            controller: context
                                                                .read<
                                                                    InputValueCreateCubit>()
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
                                      context
                                              .read<InputValueCreateCubit>()
                                              .fromBarcode
                                          ? BarcodeKeyboardListener(
                                              bufferDuration: const Duration(
                                                  milliseconds: 200),
                                              onBarcodeScanned: (barcode) {
                                                context
                                                    .read<
                                                        InputValueCreateCubit>()
                                                    .parseBarcode(barcode);
                                              },
                                              child: Container(
                                                padding: EdgeInsets.symmetric(
                                                    vertical: AppSizeH.s15),
                                                decoration: BoxDecoration(
                                                    color: ColorManager.white,
                                                    boxShadow: [
                                                      BoxShadow(
                                                          color: ColorManager
                                                              .shadow,
                                                          blurRadius:
                                                              AppSizeR.s2)
                                                    ],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            AppSizeR.s12)),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal:
                                                                  AppSizeW.s15),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text("معلومات الهوية",
                                                              style: Theme.of(
                                                                      context)
                                                                  .textTheme
                                                                  .titleMedium),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              TextButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .read<
                                                                            InputValueCreateCubit>()
                                                                        .resetBarcode();
                                                                  },
                                                                  child: Text(
                                                                    "مسح البيانات",
                                                                    style: Theme.of(
                                                                            context)
                                                                        .textTheme
                                                                        .titleMedium,
                                                                  )),
                                                              context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .fromBarcode
                                                                  ? Tooltip(
                                                                      message:
                                                                          "المسح الضوئي",
                                                                      child: IconButton(
                                                                          onPressed: () {
                                                                            context.read<InputValueCreateCubit>().setFromBarcode(!context.read<InputValueCreateCubit>().fromBarcode);
                                                                          },
                                                                          icon: const Icon(Icons.qr_code_scanner_rounded)),
                                                                    )
                                                                  : Tooltip(
                                                                      message:
                                                                          "الكتابة اليدوية",
                                                                      child: IconButton(
                                                                          onPressed: () {
                                                                            context.read<InputValueCreateCubit>().setFromBarcode(!context.read<InputValueCreateCubit>().fromBarcode);
                                                                          },
                                                                          icon: const Icon(Icons.insert_page_break_outlined)),
                                                                    ),
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                    ),
                                                    SizedBox(
                                                        height: AppSizeH.s15),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s15),
                                                          child: Wrap(
                                                            runSpacing:
                                                                AppSizeH.s15,
                                                            children: [
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الأسم لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الأسم",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .nameIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الكنية لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الكنية",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .surnameIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "اسم الاب لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الاب",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .fatherNameIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "اسم الام لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الام",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .motherNameIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
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
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .birthPlaceIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الرجاء تحديد تاريخ الولادة";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "تاريخ الولادة",
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .dobIdentityController),
                                                              InputFieldWidget(
                                                                  isReadOnly:
                                                                      true,
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
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
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .nationalNumberIdentityController),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                            height:
                                                                AppSizeH.s10),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            )
                                          : Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: AppSizeH.s15),
                                              decoration: BoxDecoration(
                                                  color: ColorManager.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color:
                                                            ColorManager.shadow,
                                                        blurRadius: AppSizeR.s2)
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          AppSizeR.s12)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                AppSizeW.s15),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text("معلومات الهوية",
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .titleMedium),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Tooltip(
                                                              message:
                                                                  "الكتابة اليدوية",
                                                              child: IconButton(
                                                                  onPressed:
                                                                      () {
                                                                    context
                                                                        .read<
                                                                            InputValueCreateCubit>()
                                                                        .setFromBarcode(!context
                                                                            .read<InputValueCreateCubit>()
                                                                            .fromBarcode);
                                                                  },
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .insert_page_break_outlined)),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                      height: AppSizeH.s15),
                                                  AnimatedSwitcher(
                                                    switchInCurve:
                                                        Curves.linear,
                                                    switchOutCurve:
                                                        Curves.linear,
                                                    reverseDuration:
                                                        const Duration(
                                                            milliseconds: 500),
                                                    duration: const Duration(
                                                        milliseconds: 500),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      AppSizeW
                                                                          .s15),
                                                          child: Wrap(
                                                            runSpacing:
                                                                AppSizeH.s15,
                                                            children: [
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الأسم لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الأسم",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .nameIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الكنية لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الكنية",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .surnameIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "اسم الاب لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الاب",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .fatherNameIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "اسم الام لا يمكن ان يكون فارغ";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  labelText:
                                                                      "الام",
                                                                  inputFormatters: [
                                                                    FilteringTextInputFormatter
                                                                        .allow(RegExp(
                                                                            r'[ء-ي\s]')),
                                                                  ],
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .motherNameIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
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
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .birthPlaceIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
                                                                      return "الرجاء تحديد تاريخ الولادة";
                                                                    }
                                                                    return null;
                                                                  },
                                                                  isReadOnly:
                                                                      true,
                                                                  onTap:
                                                                      () async {
                                                                    DateTime?
                                                                        selectedDate =
                                                                        await showDatePicker(
                                                                      context:
                                                                          context,
                                                                      initialDatePickerMode:
                                                                          DatePickerMode
                                                                              .year,
                                                                      initialEntryMode:
                                                                          DatePickerEntryMode
                                                                              .calendarOnly,
                                                                      firstDate:
                                                                          DateTime(
                                                                              1900),
                                                                      lastDate:
                                                                          DateTime
                                                                              .now(),
                                                                    );
                                                                    context
                                                                        .read<
                                                                            InputValueCreateCubit>()
                                                                        .setDobIdentity(
                                                                            selectedDate);
                                                                  },
                                                                  labelText:
                                                                      "تاريخ الولادة",
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .dobIdentityController),
                                                              InputFieldWidget(
                                                                  validator:
                                                                      (value) {
                                                                    if (value !=
                                                                            null &&
                                                                        value
                                                                            .isEmpty) {
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
                                                                  controller: context
                                                                      .read<
                                                                          InputValueCreateCubit>()
                                                                      .nationalNumberIdentityController),
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                            height:
                                                                AppSizeH.s10),
                                                      ],
                                                    ),
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
              )),
        );
      },
    );
  }
}

class SaveEditWidget extends StatefulWidget {
  final int id;
  final String type;
  const SaveEditWidget({super.key, required this.id, required this.type});

  @override
  State<SaveEditWidget> createState() => _SaveEditWidgetState();
}

class _SaveEditWidgetState extends State<SaveEditWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          "هل انت متأكد من حفظ المعلومات ؟",
          style: Theme.of(context).textTheme.labelMedium,
        ),
        SizedBox(height: AppSizeH.s15),
        BlocConsumer(
          listener: (context, TravelerState state) {
            state.mapOrNull(
              loaded: (value) {
                Navigator.of(context).pop(true);
              },
            );
          },
          bloc: context.read<TravelerBloc>(),
          builder: (context, TravelerState state) {
            return state.maybeMap(
              loading: (value) {
                return const Row(
                  children: [Expanded(child: LinearProgressIndicator())],
                );
              },
              orElse: () {
                return Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                          onPressed: () {
                            context
                                .read<TravelerBloc>()
                                .add(TravelerEvent.updateTraveler(
                                    input: InputCreateTravelerModel(
                                  contactId: widget.id,
                                  name: context
                                      .read<InputValueCreateCubit>()
                                      .nameIdentityController
                                      .text,
                                  phoneNumber: context
                                      .read<InputValueCreateCubit>()
                                      .phoneController
                                      .text,
                                  whatsAppNumber: context
                                      .read<InputValueCreateCubit>()
                                      .whatsAppController
                                      .text,
                                  countryId: context
                                          .read<InputValueCreateCubit>()
                                          .countrySelected
                                          ?.id ??
                                      0,
                                  stateId: context
                                          .read<InputValueCreateCubit>()
                                          .stateSelected
                                          ?.id ??
                                      0,
                                  officeId: context
                                              .read<InputValueCreateCubit>()
                                              .officeSelected
                                              ?.id ==
                                          0
                                      ? null
                                      : context
                                          .read<InputValueCreateCubit>()
                                          .officeSelected
                                          ?.id,
                                  vip: context
                                          .read<InputValueCreateCubit>()
                                          .isVip ??
                                      false,
                                  type: widget.type == EntityType.person.name
                                      ? EntityType.person.name
                                      : EntityType.company.name,
                                  city: context
                                      .read<InputValueCreateCubit>()
                                      .cityController
                                      .text,
                                  street: context
                                      .read<InputValueCreateCubit>()
                                      .streetController
                                      .text,
                                  street2: context
                                      .read<InputValueCreateCubit>()
                                      .street2Controller
                                      .text,
                                  reference: context
                                      .read<InputValueCreateCubit>()
                                      .noteController
                                      .text,
                                  passportName: context
                                      .read<InputValueCreateCubit>()
                                      .namePassportController
                                      .text,
                                  ePassportName: context
                                      .read<InputValueCreateCubit>()
                                      .eNamePassportController
                                      .text,
                                  passportSurname: context
                                      .read<InputValueCreateCubit>()
                                      .surnamePassportController
                                      .text,
                                  ePassportSurname: context
                                      .read<InputValueCreateCubit>()
                                      .eSurnamePassportController
                                      .text,
                                  passportMotherName: context
                                      .read<InputValueCreateCubit>()
                                      .motherNamePassportController
                                      .text,
                                  ePassportMotherName: context
                                      .read<InputValueCreateCubit>()
                                      .eMotherNamePassportController
                                      .text,
                                  passportFatherName: context
                                      .read<InputValueCreateCubit>()
                                      .fatherNamePassportController
                                      .text,
                                  ePassportFatherName: context
                                      .read<InputValueCreateCubit>()
                                      .eFatherNamePassportController
                                      .text,
                                  passportDateOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .dobPassportController
                                      .text,
                                  ePassportDateOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .dobPassportController
                                      .text,
                                  passportPlaceOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .birthPlacePassportController
                                      .text,
                                  ePassportPlaceOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .eBirthPlacePassportController
                                      .text,
                                  passportGender: context
                                          .read<InputValueCreateCubit>()
                                          .genderSelected
                                          ?.name ??
                                      GenderType.male.name,
                                  ePassportGender: context
                                          .read<InputValueCreateCubit>()
                                          .genderSelected
                                          ?.name ??
                                      GenderType.male.name,
                                  passportNumberOfPassport: context
                                      .read<InputValueCreateCubit>()
                                      .numberPassportController
                                      .text,
                                  ePassportNumberOfPassport: context
                                      .read<InputValueCreateCubit>()
                                      .numberPassportController
                                      .text,
                                  passportReleaseDate: context
                                      .read<InputValueCreateCubit>()
                                      .issuedDatePassportController
                                      .text,
                                  ePassportReleaseDate: context
                                      .read<InputValueCreateCubit>()
                                      .issuedDatePassportController
                                      .text,
                                  passportPlaceOfIssue: context
                                      .read<InputValueCreateCubit>()
                                      .placeIssuePassportController
                                      .text,
                                  ePassportPlaceOfIssue: context
                                      .read<InputValueCreateCubit>()
                                      .placeIssuePassportController
                                      .text,
                                  passportExpirationDate: context
                                      .read<InputValueCreateCubit>()
                                      .expirationDatePassportController
                                      .text,
                                  ePassportExpirationDate: context
                                      .read<InputValueCreateCubit>()
                                      .expirationDatePassportController
                                      .text,
                                  passportNationalNumber: context
                                      .read<InputValueCreateCubit>()
                                      .nationalNumberPassportController
                                      .text,
                                  ePassportNationalNumber: context
                                      .read<InputValueCreateCubit>()
                                      .nationalNumberPassportController
                                      .text,
                                  passportJob: context
                                      .read<InputValueCreateCubit>()
                                      .jobPassportController
                                      .text,
                                  ePassportJob: context
                                      .read<InputValueCreateCubit>()
                                      .jobPassportController
                                      .text,
                                  identitySurname: context
                                      .read<InputValueCreateCubit>()
                                      .surnameIdentityController
                                      .text,
                                  identityFather: context
                                      .read<InputValueCreateCubit>()
                                      .fatherNameIdentityController
                                      .text,
                                  identityMother: context
                                      .read<InputValueCreateCubit>()
                                      .motherNameIdentityController
                                      .text,
                                  identityDateOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .dobIdentityController
                                      .text,
                                  identityPlaceOfBirthday: context
                                      .read<InputValueCreateCubit>()
                                      .birthPlaceIdentityController
                                      .text,
                                  identityNationalNumber: context
                                      .read<InputValueCreateCubit>()
                                      .nationalNumberIdentityController
                                      .text,
                                  identityGender: context
                                          .read<InputValueCreateCubit>()
                                          .genderSelected
                                          ?.name ??
                                      GenderType.male.name,
                                )));
                          },
                          child: const Text("نعم")),
                    ),
                    SizedBox(width: AppSizeW.s6),
                    Expanded(
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  WidgetStateProperty.all(ColorManager.white),
                              shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(AppSizeR.s7),
                                      side: BorderSide(
                                          color: ColorManager.primary)))),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            "لا",
                            style: Theme.of(context).textTheme.titleSmall,
                          )),
                    )
                  ],
                );
              },
            );
          },
        )
      ],
    );
  }
}
