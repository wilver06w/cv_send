import 'package:bloc/bloc.dart';
import 'package:cv_send/_childrens/home/_childrens/info/models/item_experience.dart';
import 'package:cv_send/_childrens/home/_childrens/repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'event.dart';
part 'state.dart';

class BlocInfo extends Bloc<InfoEvent, InfoState> {
  BlocInfo({
    required this.repository,
  }) : super(const InitialState(Model())) {
    on<ChangedOptionSelectedEvent>(_onChangedOptionSelectedEvent);
    on<GetExperiencesEvent>(_onGetExperiencesEvent);
  }

  final Repository repository;

  void _onChangedOptionSelectedEvent(
    ChangedOptionSelectedEvent event,
    Emitter<InfoState> emit,
  ) {
    emit(
      ChangedOptionSelected(
        state.model.copyWith(
          optionSelected: event.optionSelected,
        ),
      ),
    );
  }

  void _onGetExperiencesEvent(
    GetExperiencesEvent event,
    Emitter<InfoState> emit,
  ) {
    final experiences = repository.getExperiences();

    emit(
      GetExperiencesState(
        state.model.copyWith(
          experiences: experiences,
        ),
      ),
    );
  }
}
