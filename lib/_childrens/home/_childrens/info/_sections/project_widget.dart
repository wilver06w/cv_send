part of 'package:cv_send/_childrens/home/_childrens/info/page.dart';

class ProjectWidget extends StatelessWidget {
  const ProjectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocBuilder<BlocInfo, InfoState>(
        buildWhen: (previous, current) {
          // Solo reconstruir cuando cambien los proyectos o la opción seleccionada
          return previous.model.projects != current.model.projects ||
              previous.model.optionSelected != current.model.optionSelected;
        },
        builder: (context, state) {
          // Verificar que los proyectos estén cargados
          if (state.model.projects.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }

          return GridView.count(
            addAutomaticKeepAlives: true,
            shrinkWrap: true,
            mainAxisSpacing: 8.0, // spacing between rows
            crossAxisSpacing: 8.0, // spacing between columns
            crossAxisCount: 2,
            children: List.generate(state.model.projects.length, (index) {
              final project = state.model.projects[index];
              return project.routeGif.isEmpty
                  ? InkWell(
                      onTap: () {
                        XigoRoute.navProject(itemProject: project);
                      },
                      child: Image.asset(
                        project.routeImage,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    )
                  : InkWell(
                      onTap: () {
                        XigoRoute.navProject(itemProject: project);
                      },
                      child: GifView.asset(
                        project.routeGif,
                        height: 200,
                        frameRate: 30,
                        fit: BoxFit.cover,
                      ),
                    );
            }),
          );
        },
      ),
    );
  }
}
