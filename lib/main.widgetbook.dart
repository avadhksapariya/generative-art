import 'package:flutter/material.dart';
import 'package:generative_art/styles/themes.dart';
import 'package:generative_art/vera_molnar/recursive_squares_grid.dart';
import 'package:generative_art/vera_molnar/square.dart';
import 'package:generative_art/vera_molnar/squares_grid.dart';
import 'package:widgetbook/widgetbook.dart';

void main() {
  runApp(WidgetBookApp());
}

class WidgetBookApp extends StatelessWidget {
  const WidgetBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Widgetbook.material(
      appBuilder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppThemes.darkTheme,
          title: "Flutter Generative Art",
          home: Material(child: child),
        );
      },
      directories: [
        WidgetbookFolder(
          name: "Vera Molnar",
          children: [
            WidgetbookCategory(
              name: "Widgets",
              children: [
                WidgetbookComponent(
                  name: "Square",
                  useCases: [
                    WidgetbookUseCase(
                      name: "Playground",
                      builder: (context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: Square(),
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: "SquareGrid",
                  useCases: [
                    WidgetbookUseCase(
                      name: "Playground",
                      builder: (context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: SquaresGrid(),
                        );
                      },
                    ),
                  ],
                ),
                WidgetbookComponent(
                  name: "RecursiveSquareGrid",
                  useCases: [
                    WidgetbookUseCase(
                      name: "Playground",
                      builder: (context) {
                        return SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: RecursiveSquaresGrid(
                            enableColors: context.knobs.boolean(label: 'Enable Colors', initialValue: true),
                            strokeWidth: context.knobs.double.slider(
                              label: 'Stroke Width',
                              initialValue: 1.0,
                              min: 0.5,
                              max: 3.5,
                              divisions: 6,
                            ),
                            side: context.knobs.double.slider(
                              label: 'Square Side Length',
                              initialValue: 80,
                              min: 30,
                              max: 200,
                            ),
                            gap: context.knobs.double.slider(label: 'Gap', initialValue: 5, min: 5, max: 50),
                            saturation: context.knobs.double.slider(
                              label: 'Saturation',
                              initialValue: 0.7,
                              min: 0,
                              max: 1.0,
                              divisions: 10,
                            ),
                            lightness: context.knobs.double.slider(
                              label: 'Lightness',
                              initialValue: 0.5,
                              min: 0,
                              max: 1.0,
                              divisions: 10,
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
