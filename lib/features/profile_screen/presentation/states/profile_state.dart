
import 'package:foodu/features/profile_screen/presentation/models/profile_details_ui.dart';

class ProfileState{
  ProfileState._();
  factory ProfileState.success(ProfileDetailsUi profileDetails) = LoadedProfileState;
  factory ProfileState.initial() = InitialProfileState;
  factory ProfileState.loading() = LoadingProfileState;
}

class InitialProfileState extends ProfileState{
  InitialProfileState(): super._();
}
class LoadingProfileState extends ProfileState{
  LoadingProfileState(): super._();
}
class LoadedProfileState extends ProfileState{
  final ProfileDetailsUi data;
  LoadedProfileState(this.data): super._();
}
class FailProfileState extends ProfileState{
  final String message;
  FailProfileState(this.message): super._();
}
