import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  @override
  ProfileState get initialState => BoxSelected();

  @override
  Stream<ProfileState> mapEventToState(
    ProfileEvent event,
  ) async* {
    if(event is BoxChecked) {
      yield BoxSelected();
    } else if(event is BoxUnchecked) {
      yield BoxUnselected();
    }
  }
}
