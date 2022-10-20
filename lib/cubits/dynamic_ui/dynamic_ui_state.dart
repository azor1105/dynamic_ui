part of 'dynamic_ui_cubit.dart';

class DynamicUiState extends Equatable {
  const DynamicUiState({
    this.errorText = '',
    this.status = FormzStatus.pure,
    required this.uiRequirements,
  });

  final List<UiModel> uiRequirements;
  final String errorText;
  final FormzStatus status;

  DynamicUiState copyWith({
    List<UiModel>? uiRequirements,
    String? errorText,
    FormzStatus? status,
  }) =>
      DynamicUiState(
        errorText: errorText ?? this.errorText,
        status: status ?? this.status,
        uiRequirements: uiRequirements ?? this.uiRequirements,
      );

  @override
  List<Object> get props => [uiRequirements, status, errorText];
}
