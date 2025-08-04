part of 'package:cv_send/_childrens/info/page.dart';

class ItemExperience extends StatelessWidget {
  const ItemExperience({
    super.key,
    required this.title,
    required this.descriptionSpanish,
    required this.urlSite,
    required this.date,
  });

  final String title;
  final String descriptionSpanish;
  final String urlSite;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                ItemText(
                  isSubtitle: true,
                  textTile: title,
                  onTap: () {
                    if (urlSite.isNotEmpty) {
                      Functions.launchInBrowser(url: urlSite);
                    }
                  },
                ),
                const Gap(CvSpacing.md),
                const ContainerItem(title: 'Remote'),
              ],
            ),
            XigoText.small(label: date, textStyle: GoogleFonts.robotoMono()),
          ],
        ),
        const Gap(CvSpacing.md),
        XigoText.labelText(
          label: descriptionSpanish,
          textStyle: GoogleFonts.lato(),
        ),
        const Gap(CvSpacing.md),
      ],
    );
  }
}
