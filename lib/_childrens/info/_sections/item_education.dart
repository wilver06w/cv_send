part of 'package:cv_send/_childrens/info/page.dart';

class ItemEducation extends StatelessWidget {
  const ItemEducation({
    super.key,
    required this.ubication,
    required this.title,
    required this.type,
    required this.date,
  });

  final String title;
  final String ubication;
  final String type;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              XigoText.labelText(
                label: ubication,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
              const Gap(CvSpacing.md),
              XigoText.labelText(
                label: title,
                textStyle: GoogleFonts.robotoMono(),
              ),
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            XigoText.small(
              label: date,
              textStyle: GoogleFonts.robotoMono(),
            ),
            const Gap(CvSpacing.md),
            XigoText.small(
              label: type,
              textStyle: GoogleFonts.robotoMono(),
            ),
          ],
        ),
      ],
    );
  }
}
