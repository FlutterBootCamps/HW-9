import 'package:flutter/material.dart';
import 'package:hw9/data/data.dart';
import 'package:hw9/model/model.dart';
import 'package:hw9/screen/widget/card_widget.dart';

List<Game> gameList = [];
List<Color> colorsList = [
   Color.fromARGB(255, 125, 5, 69),
  
  Color.fromARGB(255, 148, 204, 37),
 
  Color.fromARGB(255, 98, 221, 240),
  Color.fromARGB(255, 229, 44, 44),
  Color.fromARGB(255, 190, 184, 13),
    Color.fromARGB(255, 75, 159, 228),
   Colors.red,
  Colors.red,
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    for (var element in gamesData) {
      gameList.add(Game.fromJson(element));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Row(
              children: [
                Container(
                  width: 281,
                  height: 46,
                  margin: EdgeInsets.all(8),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: ' Search',
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xff002140),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          width: 1,
                          color: Color(0xff002140),
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                
                  ),
                 
                ),Container(
                child: IconButton(
                    onPressed: () {},
                    icon: Image(
                      image: AssetImage('assets/Notification.png'),
                    ),
                  ),
                )
              ],
            ),
            DefaultTabController(
              length: 4,
              child: Container(
                child: TabBar(
                  // padding: EdgeInsets.only(left: 30, bottom: 20, right: 100),
                  // indicatorWeight: 0.5,
                  // indicatorPadding: EdgeInsets.only(left: 1, right: 30),
                  dividerColor: Colors.grey,
                  labelColor: Colors.yellow,
                  indicatorColor: Colors.yellow,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Tab(
                        text: 'Popular',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Tab(
                        text: 'Trending',
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(1),
                      child: Tab(
                        text: 'New Launch',
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.all(1),
                      child: Tab(
                        text: 'Free',
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Set the number of columns
                crossAxisSpacing: 10.0, // Set the spacing between columns
                mainAxisSpacing: 10.0, // Set the spacing between rows
              ),
              itemCount: gameList.length,
              itemBuilder: (context, index) {
                return Center(
                  child: CardWidget(
                    newGame: gameList[index],
                    color: colorsList[index],
                  ),
                );
              },
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
            ),
          ],
        ),
      ),
    );
  }
}