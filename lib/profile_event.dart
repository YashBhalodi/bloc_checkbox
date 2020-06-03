import 'package:equatable/equatable.dart';

abstract class ProfileEvent extends Equatable {
  const ProfileEvent();
  @override
  List<Object> get props => [];
}

class BoxChecked extends ProfileEvent {}

class BoxUnchecked extends ProfileEvent {}