part of 'package:cv_send/_childrens/info/page.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ItemText(
              textTile: InitProyectUiValues.myName,
              onTap: () {
                Functions.launchInBrowser(
                  url: InitProyectUiValues.linkedinLink,
                );
              },
            ),
            const SizedBox(
              height: InitProyectUiValues.spacingEight,
            ),
            XigoText.labelText(
              label: InitProyectUiValues.mobileDeveloper,
              color: Colors.black,
            ),
            const SizedBox(
              height: InitProyectUiValues.spacingEight,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  InitProyectUiValues.svgIconWorld,
                  height: InitProyectUiValues.spacingMedium,
                  width: InitProyectUiValues.spacingMedium,
                ),
                const SizedBox(
                  width: InitProyectUiValues.spacingEight,
                ),
                XigoText.labelText(
                  label: InitProyectUiValues.country,
                  color: Colors.black,
                ),
              ],
            ),
            const Gap(CvSpacing.sl),
            Row(
              children: [
                ItemContainerSvg(
                  svgUrl: InitProyectUiValues.svgEmail,
                  onTap: () {
                    Functions.launchEmail();
                  },
                ),
                const Gap(CvSpacing.sm),
                ItemContainerSvg(
                  onTap: () {
                    Functions.launchInBrowser(
                      url: InitProyectUiValues.linkedinLink,
                    );
                  },
                  svgUrl: InitProyectUiValues.svgLinkdln,
                ),
                const Gap(CvSpacing.sm),
                ItemContainerSvg(
                  svgUrl: InitProyectUiValues.svgIconGitHub,
                  onTap: () {
                    Functions.launchInBrowser(
                      url: InitProyectUiValues.githubLink,
                    );
                  },
                ),
                const Gap(CvSpacing.sm),
                ItemContainerSvg(
                  svgUrl: InitProyectUiValues.svgX,
                  onTap: () {
                    Functions.launchInBrowser(
                      url: InitProyectUiValues.xLink,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: CvResponsive.heightSizeByContext(
            context,
            pixels: size.width > 1400 ? 200 : 150,
          ),
          width: CvResponsive.withSizeByContext(
            context,
            pixels: size.width > 1400 ? 30 : 90,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              InitProyectUiValues.imageMe,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
