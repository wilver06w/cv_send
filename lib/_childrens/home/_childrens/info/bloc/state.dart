part of 'bloc.dart';

abstract class InfoState extends Equatable {
  final Model model;
  const InfoState(this.model);

  @override
  List<Object?> get props => [model];
}

class InitialState extends InfoState {
  const InitialState(Model model) : super(model);
}

class ChangedOptionSelected extends InfoState {
  const ChangedOptionSelected(Model model) : super(model);
}

class GetExperiencesState extends InfoState {
  const GetExperiencesState(Model model) : super(model);
}

class Model extends Equatable {
  const Model({
    this.optionSelected = 0,
    this.experiences = const [],
  });

  final int optionSelected;
  final List<ItemExperience> experiences;

  Model copyWith({
    int? optionSelected,
    List<ItemExperience>? experiences,
  }) {
    return Model(
      optionSelected: optionSelected ?? this.optionSelected,
      experiences: experiences ?? this.experiences,
    );
  }

  @override
  List<Object?> get props {
    return [
      optionSelected,
      experiences,
    ];
  }
}
