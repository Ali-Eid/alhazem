import 'dart:math';
import 'package:bloc/bloc.dart';

class InputPaymentCubit extends Cubit<int> {
  InputPaymentCubit(super.initialState);

  num total = 0;
  num totalPaid = 0;
  num remainingTotal = 0;

  void setTotal(
      {required num total, required num paid, required num remaining}) {
    this.total = total;
    totalPaid = paid;
    remainingTotal = remaining;
    emit(Random().nextInt(100));
  }
}
