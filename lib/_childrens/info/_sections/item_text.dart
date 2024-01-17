part of 'package:cv_send/_childrens/info/page.dart';

class ItemText extends StatefulWidget {
  const ItemText({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  State<ItemText> createState() => _ItemTextState();
}

class _ItemTextState extends State<ItemText> {
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
          return InkWell(
            onTap: widget.onTap,
            child: XigoText.title(
              label: InitProyectUiValues.myName,
              color: Colors.black,
              textStyle: TextStyle(
                decoration:
                    (snapshot.data ?? false) ? TextDecoration.underline : null,
              ),
              fontWeight: FontWeight.bold,
            ),
          );
        },
      ),
    );
  }
}
