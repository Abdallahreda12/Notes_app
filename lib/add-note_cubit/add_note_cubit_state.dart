part of 'add_note_cubit_cubit.dart';

@immutable
abstract class AddNoteCubitState {}

final class AddNoteCubitInitial extends AddNoteCubitState {}

final class AddNoteCubitLoading extends AddNoteCubitState {}

final class AddNoteCubitSeccuss extends AddNoteCubitState {}

final class AddNoteCubitFailure extends AddNoteCubitState {
  final String errorMessage;

  AddNoteCubitFailure(this.errorMessage);
}
