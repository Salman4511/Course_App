import 'package:course_app/constants/constants.dart';
import 'package:course_app/view/widgets/container_widget.dart';
import 'package:course_app/view/widgets/top_bar_widget_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: Column(
        children: [
          const TopBarWidgetCard(),
          kheight30,
          Row(
            children: [
              kwidth10,
              Wrap(spacing: 35,children:[ SelectionContainerWidget(color: Colors.pink.shade300, title: 'Exam', image:'https://cdn-icons-png.flaticon.com/128/9913/9913467.png',),
              const SelectionContainerWidget(color: Colors.yellow, title:'Practice', image: 'https://cdn-icons-png.flaticon.com/128/25/25643.png'),
              const SelectionContainerWidget(color: Colors.cyan, title:'Materials', image:'https://cdn-icons-png.flaticon.com/128/5832/5832416.png')
              ],
              )
            
            ],
          )
        ],
      ),
    );
  }
}



