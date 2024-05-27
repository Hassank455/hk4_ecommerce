import 'package:freezed_annotation/freezed_annotation.dart';
part 'onboarding_state.freezed.dart';

@freezed
class OnboardingState<T> with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  const factory OnboardingState.changePageState({required int currentPage}) = ChangePageState;
}
