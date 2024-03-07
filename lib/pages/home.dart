import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  
  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int currentPageIndex = 0;
  final pageController = PageController();

  void onButtomNavigationChanged(int page){
    setState(() {

      pageController.animateToPage(page, duration: Duration(milliseconds: 150), curve: Curves.easeIn);
    });
  }



  @override
  Widget build(BuildContext context){
    return Scaffold(
      
      appBar: AppBar(
        title: const Row(
          children: [
            Text("Chatify")
          ],
        )
      ),
      body: PageView(
        controller: pageController,
        children: [
          Text("This is Home component"),
          Text("This is Chats component"),
          Text("This is Search component"),
        ],
        onPageChanged: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
      ),
      drawer: const Drawer(
        
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: onButtomNavigationChanged,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Chats",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search"
          )
          
        ],
      ),
    );
  }
}