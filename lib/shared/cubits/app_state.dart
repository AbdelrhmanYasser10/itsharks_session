part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}

class GetDataLoading extends AppState{}

class GetDataError extends AppState{}

class GetDataSuccessfully extends AppState{}
