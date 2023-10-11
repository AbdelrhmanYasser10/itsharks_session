import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:news_app_session/shared/network/dio_helper/dio_helper.dart';
import 'package:news_app_session/shared/network/end_points/end_points.dart';

import '../../../models/news_model.dart';
import '../../constants/constants.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());

  static AppCubit get(context)=>BlocProvider.of(context);

  List<NewsModel> breakingNewsSlider = [];

  List<NewsModel> breakingNews = [];

  List<NewsModel> specificNews = [];

  void getBreakingNews (){
    breakingNews = [];
    breakingNewsSlider = [];
    emit(GetBreakingNewsLoading());
    DioHelper.getData(
        url: GETBREAKINGNEWS,
        query: {
            'country':'us',
            'apiKey': API_KEY,
        }
    ).then((value) {
      print(value);
        var jsonData = value.data;
        print(jsonData);
        if(jsonData['status'] == 'ok'){
          for(int i = 0 ; i < 5;i++){
            breakingNewsSlider.add(NewsModel.fromMap(jsonData['articles'][i]));
          }
          jsonData['articles'].forEach((element){
            breakingNews.add(NewsModel.fromMap(element));
          });
          emit(GetBreakingNewsSuccessfully());
        }
        else{
          if(kDebugMode){
            print('There\'s an error here');
            print(jsonData);
          }
          emit(GetBreakingNewsError());
        }
      
    }).catchError((error){
        if(kDebugMode){
          print('There\'s an error here');
          print(error.toString());
        }
        emit(GetBreakingNewsError());
    });
  }


  void getSpecificNews({
  required bool isFromCategory,
  required String querySearch,
}){
    specificNews = [];
    emit(GetSpecificNewsLoading());
    Map<String,dynamic> q = isFromCategory ? {
      'category':querySearch,
      'country':'us',
      'apikey':API_KEY
    } : {
      'q':querySearch,
      'apikey':API_KEY,
    };
    DioHelper.getData(
        url: isFromCategory ? GETBREAKINGNEWS : GETALLNEWS,
      query: q
    ).then((value){
      var jsonData = value.data;
      if(jsonData['status'] == 'ok'){
        jsonData['articles'].forEach((element){
          specificNews.add(NewsModel.fromMap(element));
        });
        emit(GetSpecificNewsSuccessfully());
      }
      else{
        if(kDebugMode){
          print('There\'s an error here');
          print(jsonData);
        }
        emit(GetSpecificNewsError());
      }
    }).catchError((error){
      if(kDebugMode){
        print('There\'s an error here');
        print(error.toString());
      }
      emit(GetSpecificNewsError());
    });
  }


}
