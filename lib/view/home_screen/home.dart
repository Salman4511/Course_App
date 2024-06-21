import 'package:course_app/constants/constants.dart';
import 'package:course_app/view/widgets/circle_avatar_widget.dart';
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
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[ Column(
            children: [
              const TopBarWidgetCard(),
              kheight30,
              Row(
                children: [
                  kwidth10,
                  Wrap(
                    spacing: 35,
                    children: [
                      SelectionContainerWidget(
                        color: Colors.pink.shade300,
                        title: 'Exam',
                        image:
                            'https://cdn-icons-png.flaticon.com/128/9913/9913467.png',
                      ),
                      const SelectionContainerWidget(
                          color: Colors.yellow,
                          title: 'Practice',
                          image:
                              'https://cdn-icons-png.flaticon.com/128/25/25643.png'),
                      const SelectionContainerWidget(
                          color: Colors.cyan,
                          title: 'Materials',
                          image:
                              'https://cdn-icons-png.flaticon.com/128/5832/5832416.png')
                    ],
                  )
                ],
              ),
              kheight30,
              Row(
                children: [
                  kwidth10,
                  const Text(
                    'Courses',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  TextButton(
                      onPressed: () {},
                      child:
                          const Text('See All', style: TextStyle(fontSize: 16)))
                ],
              ),
              Column(
                children: [
                  Wrap(
                    spacing: 30,
                    children: [
                      CircleAvatarWidget(
                        color: Colors.teal.shade300,
                        img: img1,
                        title: 'KTET',
                      ),
                      CircleAvatarWidget(
                        color: Colors.yellow.shade300,
                        img: img2,
                        title: 'LP/UP/HST',
                      ),
                      CircleAvatarWidget(
                        color: Colors.orange.shade300,
                        img: img3,
                        title: 'SET',
                      ),
                    ],
                  ),
                  kheight30,
                  Wrap(
                    spacing: 30,
                    children: [
                      CircleAvatarWidget(
                        color: Colors.pink.shade300,
                        img: img4,
                        title: 'NET',
                      ),
                      CircleAvatarWidget(
                        color: Colors.blue.shade300,
                        img: img5,
                        title: 'Montessori',
                      ),
                      CircleAvatarWidget(
                        color: Colors.purple.shade300,
                        img: img6,
                        title: 'Crash Course',
                      ),
                    ],
                  ),
                  kheight30,
                  Container(
                      height: 120,
                      width: 350,
                      decoration: BoxDecoration(
                          color: Colors.amber.shade200,
                          borderRadius: BorderRadius.circular(15)),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            '  Practice with previous year',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          ),
                          const Text('  Question paper',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18)),
                                  kheight30,
                          const Center(child: Icon(Icons.arrow_circle_right,color: Colors.blue,size: 28,))
                        ],
                      )),
                    ],
              )
            ],
          ),
          const Positioned(
              left: 240,
              bottom: 10,
              child: Image(
                  image: NetworkImage(
                      'https://cdn-icons-png.flaticon.com/128/609/609001.png')))
              
          ]
        ),
      ),
    );
  }
}
