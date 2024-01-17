part of 'package:cv_send/_childrens/info/page.dart';

class ItemContainerSvg extends StatefulWidget {
  const ItemContainerSvg({
    super.key,
    required this.onTap,
    required this.svgUrl,
  });

  final VoidCallback onTap;
  final String svgUrl;

  @override
  State<ItemContainerSvg> createState() => _ItemUrlState();
}

class _ItemUrlState extends State<ItemContainerSvg> {
  bool isOn = false;
  StreamController<bool> streamController = StreamController<bool>();

  @override
  void initState() {
    streamController.add(isOn);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        streamController.add(value);
      },
      child: StreamBuilder<bool>(
        stream: streamController.stream,
        builder: (BuildContext context, AsyncSnapshot<bool> snapshot) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
              color: (snapshot.data ?? false)
                  ? XigoColors.containerSelected
                  : Colors.white,
              border: Border.all(
                color: (snapshot.data ?? false)
                    ? Colors.white
                    : XigoColors.containerBorder,
              ),
            ),
            padding: const EdgeInsets.all(
              InitProyectUiValues.spacingEight,
            ),
            child: SvgPicture.asset(
              widget.svgUrl,
              height: 20,
              width: 20,
              colorFilter: ColorFilter.mode(
                (snapshot.data ?? false)
                    ? Colors.white
                    : XigoColors.containerBorder,
                BlendMode.srcIn,
              ),
            ),
          );
        },
      ),
    );
  }
}
