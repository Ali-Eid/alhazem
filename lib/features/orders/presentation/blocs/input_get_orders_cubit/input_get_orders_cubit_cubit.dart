import 'package:bloc/bloc.dart';

class InputGetOrdersCubitCubit extends Cubit<int> {
  InputGetOrdersCubitCubit(super.initialState);

  String? type;
  int? page;

  void setType(String type) {
    this.type = type;
    emit(type.hashCode);
  }

  void setPage(int page) {
    this.page = page;
    emit(page.hashCode);
  }
}
