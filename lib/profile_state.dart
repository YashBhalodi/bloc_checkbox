import 'package:equatable/equatable.dart';

abstract class ProfileState extends Equatable {
  const ProfileState();
  @override
  List<Object> get props => [];
}

class BoxSelected extends ProfileState {}

class BoxUnselected extends ProfileState {}
