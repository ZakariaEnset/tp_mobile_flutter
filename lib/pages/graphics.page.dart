import 'package:flutter/material.dart';
import 'package:tp_mobile/widgets/shape.painter.widget.dart';

class GraphicsPage extends StatefulWidget {
  const GraphicsPage({super.key});

  @override
  State<GraphicsPage> createState() => _GraphicsPageState();
}

class _GraphicsPageState extends State<GraphicsPage> {
  double radius = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Graphics")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Slider(
            value: radius,
            min: 50,
            max: 300,
            onChanged: (value) {
              setState(() {
                radius = value;
              });
            },
          ),
          Expanded(child: CustomPaint(painter: ShapePainter(radius: radius),)),
        ],
      ),
    );
  }
}
