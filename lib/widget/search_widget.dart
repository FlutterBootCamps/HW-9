import 'package:flutter/material.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  SearchWidgetState createState() => SearchWidgetState();
}

class SearchWidgetState extends State<SearchWidget> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: const InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
              color: Colors.white, 
               ),
              
                prefixIcon: Icon(Icons.search,color: Colors.white,size: 40,),
                border: OutlineInputBorder(
                  
                ),
              ),
              onChanged: (value) {
              
              },
            ),
          ),
          const SizedBox(width:30),
            Image.asset('images/Notification.png'),
        ],
      ),
    );
  }
}



