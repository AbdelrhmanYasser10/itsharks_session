part of 'app_cubit.dart';

@immutable
abstract class AppState {}

class AppInitial extends AppState {}


class GetBreakingNewsLoading extends AppState{}
class GetBreakingNewsSuccessfully extends AppState{}
class GetBreakingNewsError extends AppState{}

class GetSpecificNewsLoading extends AppState{}
class GetSpecificNewsSuccessfully extends AppState{}
class GetSpecificNewsError extends AppState {}