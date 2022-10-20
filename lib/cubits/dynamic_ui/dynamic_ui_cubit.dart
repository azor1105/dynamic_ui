import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dynamic_ui/data/models/ui_model/ui_model.dart';
import 'package:dynamic_ui/data/services/api_service.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';

part 'dynamic_ui_state.dart';

class DynamicUiCubit extends Cubit<DynamicUiState> {
  DynamicUiCubit({required ApiService apiService})
      : _apiService = apiService,
        super(const DynamicUiState(uiRequirements: []));

  final ApiService _apiService;

  void getUiRequirements() async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    try {
      final uiRequirements = await _apiService.getUiRequirements();
      emit(state.copyWith(
        uiRequirements: uiRequirements,
        status: FormzStatus.submissionSuccess,
      ));
    } on DioError catch (error) {
      emit(
        state.copyWith(
          status: FormzStatus.submissionFailure,
          errorText: error.toString(),
        ),
      );
    }
  }
}
