import 'package:flutter/material.dart';
import 'package:generative_art/styles/themes.dart';
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
              ],
            ),
          ],
        ),
      ],
    );
  }
}
