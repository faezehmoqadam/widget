import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sleek Sircular Slider',
        home: SleekSlider(),
    );
  }
}

class SleekSlider extends StatefulWidget {
  const SleekSlider({Key? key}): super(key: key);

  @override
  State<SleekSlider> createState() => _SleekSliderState();
}

class _SleekSliderState extends State<SleekSlider> {
  Widget slide1 = SleekCircularSlider(
    appearance: CircularSliderAppearance(),
    initialValue: 43,
    onChange: (double val) {},
  );
  Widget slide2=SleekCircularSlider(
    appearance: CircularSliderAppearance(
      customColors: CustomSliderColors(
        trackColors: [
          Colors.blueAccent,
          Colors.red,
        ]
      ),
      infoProperties: InfoProperties(topLabelText: 'Loding...')
    ),
    onChange: (double val){},
    initialValue: 63,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SleekSlider'),
      ),
      body: Column(
        children: [
          slide1,
          SizedBox(height: 25,),
          slide2,
        ],
      ),
    );
  }
}
