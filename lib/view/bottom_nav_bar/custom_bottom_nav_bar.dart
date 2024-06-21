import 'package:course_app/view/home_screen/home.dart';
import 'package:flutter/material.dart';
import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';


class navPage extends StatefulWidget {
  const navPage({super.key});

  @override
  _navPageState createState() => _navPageState();
}

class _navPageState extends State<navPage> {
  int _selectedIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  final List<Widget> _pages = [
    const HomeScreen(),
    
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Theme.of(context).copyWith(
        // primaryColor: Colors.deepPurple[400],
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.brown,
          cardColor: Colors.grey.shade200,
        ),
      ),
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: PageView(
          controller: _pageController,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        // backgroundColor: Colors.deepPurple[400],
        // you can use the molten bar in the scaffold's bottomNavigationBar
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
          child: MoltenBottomNavigationBar(
            selectedIndex: _selectedIndex,
            domeHeight: 25,

            borderRaduis: BorderRadius.circular(85),

            // specify what will happen when a tab is clicked
            onTabChange: (clickedIndex) {
              setState(() {
                _selectedIndex = clickedIndex;
              });
              _pageController.animateToPage(
                clickedIndex,
                duration: Duration(milliseconds: 300),
                curve: Curves.ease,
              );
            },
            // ansert as many tabs as you like
            tabs: [
              MoltenTab(
                icon: Icon(
                  Icons.home,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.book,
                  size: 35,
                ),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.beenhere_sharp,color: Colors.yellow,
                  size: 35,
                ),
              ),
              MoltenTab(
                icon: Icon(Icons.library_books_outlined, size: 30,),
                // title: Text('home'),
              ),
              MoltenTab(
                icon: Icon(
                  Icons.person,
                  size: 35,
                ),
                // title: Text('home'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
