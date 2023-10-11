import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:online_session/shared/network/remote/dio_helper.dart';
import 'package:online_session/shared/network/remote/end_points.dart';

import '../../model/quote_model.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context)=>BlocProvider.of(context);

  List<QouteModel> quotes = [];

  void getQoutes({
  int? numberOfQoutes
}){
    emit(GetDataLoading());
    DioHelper.getData(
        endPoint: QOUTE,
    ).then((value) {
      if(value.statusCode == 200){
        quotes.add(QouteModel.fromMap(value.data[0]));
        emit(GetDataSuccessfully());
      }
      else{
        emit(GetDataError());
      }
    }).catchError((error){
      print(error.toString());
      emit(GetDataError());
    });
  }
}
