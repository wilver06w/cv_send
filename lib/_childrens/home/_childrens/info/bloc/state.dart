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

class GetProjectsState extends InfoState {
  const GetProjectsState(Model model) : super(model);
}

class Model extends Equatable {
  const Model({
    this.optionSelected = 0,
    this.experiences = const [],
    this.projects = const [],
    this.skills = const [
      'Flutter',
      'Dart',
      'Kotlin',
      'Bloc',
      'Solid',
      'Modular',
      'Firebase',
      'Git',
      'GitHub',
      'GitLab',
      'OpenAi',
      'OpenAi',
      'OpenAi',
    ],
  });

  final int optionSelected;
  final List<ItemExperience> experiences;
  final List<ItemProject> projects;
  final List<String> skills;

  Model copyWith({
    int? optionSelected,
    List<ItemExperience>? experiences,
    List<ItemProject>? projects,
    List<String>? skills,
  }) {
    return Model(
      optionSelected: optionSelected ?? this.optionSelected,
      experiences: experiences ?? this.experiences,
      projects: projects ?? this.projects,
      skills: skills ?? this.skills,
    );
  }

  @override
  List<Object?> get props {
    return [
      optionSelected,
      experiences,
      projects,
      skills,
    ];
  }
}
