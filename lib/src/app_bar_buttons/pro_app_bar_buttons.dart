import 'package:pro_sliver_app_bar/src/app_bar_buttons/pro_app_bar_button.dart';

class ProAppBarButtons {

  const ProAppBarButtons({
    this.paddingToEdge = 12.0,
    this.paddingBetween = 12.0,
    this.buttons = const <ProAppBarButton>[]
  });

  final double paddingToEdge;
  final double paddingBetween;
  final List<ProAppBarButton> buttons;
}