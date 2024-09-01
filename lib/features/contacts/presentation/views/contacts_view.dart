import 'package:alhazem/core/bases/enums/entity_type.dart';
import 'package:alhazem/core/constants/assets_manager.dart';
import 'package:alhazem/core/routers/routes_manager.dart';
import 'package:alhazem/features/contacts/presentation/blocs/contact_bloc/contact_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:number_pagination/number_pagination.dart';

import '../../../../core/constants/color_manager.dart';
import '../../../../core/constants/values_manager.dart';
import '../../../services/presentation/views/types_services_view.dart';
import '../../domain/models/contact_model/contact_model.dart';

class ContactsView extends StatefulWidget {
  const ContactsView({super.key});

  @override
  State<ContactsView> createState() => _ContactsViewState();
}

class _ContactsViewState extends State<ContactsView> {
  int selectedPageNumber = 1;

  @override
  void initState() {
    context
        .read<ContactBloc>()
        .add(const ContactEvent.getContact(type: EntityType.person, page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSizeW.s16),
      child: Column(
        children: [
          SizedBox(height: AppSizeH.s15),
          BlocBuilder(
            bloc: context.read<ContactBloc>(),
            builder: (context, state) {
              return Row(
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.symmetric(
                            horizontal: AppSizeW.s15)
                        .copyWith(end: AppSizeW.s10),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedPageNumber = 1;
                          });
                          context.read<ContactBloc>().add(
                              ContactEvent.getContact(
                                  type: EntityType.person,
                                  page: selectedPageNumber));
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              context.read<ContactBloc>().type ==
                                      EntityType.person.name
                                  ? ColorManager.primary
                                  : ColorManager.white),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s7),
                              side: BorderSide(color: ColorManager.primary),
                            ),
                          ),
                        ),
                        child: Text(
                          "مسافر",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: context.read<ContactBloc>().type ==
                                          EntityType.person.name
                                      ? ColorManager.white
                                      : ColorManager.primary),
                        )),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: AppSizeW.s10),
                    child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            selectedPageNumber = 1;
                          });
                          context.read<ContactBloc>().add(
                              ContactEvent.getContact(
                                  type: EntityType.company,
                                  page: selectedPageNumber));
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(
                              context.read<ContactBloc>().type ==
                                      EntityType.company.name
                                  ? ColorManager.primary
                                  : ColorManager.white),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(AppSizeR.s7),
                              side: BorderSide(color: ColorManager.primary),
                            ),
                          ),
                        ),
                        child: Text(
                          "مكتب",
                          style: Theme.of(context)
                              .textTheme
                              .displayMedium!
                              .copyWith(
                                  color: context.read<ContactBloc>().type ==
                                          EntityType.company.name
                                      ? ColorManager.white
                                      : ColorManager.primary),
                        )),
                  ),
                ],
              );
            },
          ),
          Expanded(
            child: BlocBuilder(
              bloc: context.read<ContactBloc>(),
              builder: (context, ContactState state) {
                return state.maybeMap(
                  loading: (value) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  loaded: (value) {
                    return Column(
                      children: [
                        SizedBox(height: AppSizeH.s15),
                        value.contacts.data.isEmpty
                            ? Center(
                                child: EmptyWidget(
                                  title: "لا يوجد معلومات ",
                                  onPressed: () {
                                    context.read<ContactBloc>().add(
                                        const ContactEvent.getContact(
                                            type: EntityType.person, page: 1));
                                  },
                                ),
                              )
                            : Expanded(
                                child: GridView.builder(
                                  itemCount: value.contacts.data.length,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisSpacing: AppSizeW.s10,
                                          mainAxisSpacing: AppSizeW.s10,
                                          crossAxisCount: 5),
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      onTap: () {
                                        context.goNamed(
                                            RoutesNames.contactDetailsRoute,
                                            pathParameters: {
                                              "id":
                                                  "${value.contacts.data[index].id}"
                                            });
                                      },
                                      child: ContactItemWidget(
                                        model: value.contacts.data[index],
                                      ),
                                    );
                                  },
                                ),
                              )
                      ],
                    );
                  },
                  error: (value) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(value.message),
                          IconButton(
                              onPressed: () {}, icon: const Icon(Icons.refresh))
                        ],
                      ),
                    );
                  },
                  orElse: () {
                    return const SizedBox();
                  },
                );
              },
            ),
          ),
          BlocBuilder(
            bloc: context.read<ContactBloc>(),
            builder: (context, ContactState state) {
              return state.maybeMap(
                loading: (value) {
                  return const SizedBox();
                },
                orElse: () {
                  return context.read<ContactBloc>().totalPages != null &&
                          context.read<ContactBloc>().totalCounts != 0
                      ? NumberPagination(
                          onPageChanged: (int pageNumber) {
                            setState(() {
                              selectedPageNumber = pageNumber;
                            });
                            context.read<ContactBloc>().add(
                                ContactEvent.getContact(
                                    type: context.read<ContactBloc>().type ==
                                            EntityType.company.name
                                        ? EntityType.company
                                        : EntityType.person,
                                    page: selectedPageNumber));
                          },
                          groupSpacing: AppSizeW.s30,
                          iconNext: Icon(Icons.arrow_forward_ios_rounded,
                              size: AppSizeSp.s15),
                          iconPrevious: Icon(Icons.arrow_back_ios_new_rounded,
                              size: AppSizeSp.s15),
                          pageTotal:
                              context.read<ContactBloc>().totalPages ?? 1,
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
      ),
    );
  }
}

class ContactItemWidget extends StatelessWidget {
  final ContactModel model;
  const ContactItemWidget({
    super.key,
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorManager.white,
        //     .withOpacity(.6),
        borderRadius: BorderRadius.circular(AppSizeR.s16),
        border: Border.all(width: AppSizeW.s1, color: ColorManager.secondary),
      ),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(AppSizeH.s16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(AppSizeW.s8),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: ColorManager.primary,
                      border: Border.all(
                          width: AppSizeW.s1, color: ColorManager.secondary)),
                  child: Icon(
                    Icons.person,
                    size: AppSizeSp.s32,
                    color: ColorManager.white,
                  ),
                ),
                SizedBox(width: AppSizeW.s4),
                Expanded(
                  child: TitleValueContactWidget(
                    title: "المعرف",
                    value: '#${model.id}',
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: EdgeInsets.all(AppSizeW.s16),
              decoration: BoxDecoration(
                  // color: ColorManager.background,
                  border: Border.all(
                      width: AppSizeW.s1, color: ColorManager.secondary),
                  borderRadius: BorderRadius.circular(AppSizeR.s16)),
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                    children: [
                      // TitleValueContactWidget(
                      //   title: "المعرف",
                      //   value: '#${model.id}',
                      // ),
                      TitleValueContactWidget(
                        title: "الأسم",
                        value: model.name,
                      ),
                      TitleValueContactWidget(
                        title: "الهاتف",
                        value: model.phone,
                      ),
                    ],
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Tooltip(
                        message: "استعراض",
                        child: IconButton(
                          onPressed: () {
                            context.goNamed(RoutesNames.contactDetailsRoute,
                                pathParameters: {"id": "${model.id}"});
                          },
                          icon: Icon(
                            Icons.arrow_circle_left_outlined,
                            size: AppSizeSp.s32,
                            color: Colors.black.withOpacity(.5),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TitleValueContactWidget extends StatelessWidget {
  final String title;
  final String value;

  const TitleValueContactWidget({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "$title:",
          style: Theme.of(context).textTheme.labelSmall,
        ),
        SizedBox(width: AppSizeW.s2),
        Expanded(
          child: Text(
            value,
            style: Theme.of(context).textTheme.titleMedium,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
