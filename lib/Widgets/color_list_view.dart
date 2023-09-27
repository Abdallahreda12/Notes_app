import 'package:flutter/material.dart';

typedef void MyCallback(MaterialColor val);
int currentIndex = 0;

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key, required this.ColorsData});
  // ignore: non_constant_identifier_names
  final MyCallback ColorsData;

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    final List<MaterialColor> ListColors = [
      Colors.blue,
      Colors.red,
      Colors.cyan,
      Colors.brown,
      Colors.green,
      Colors.orange,
      Colors.yellow,
      Colors.grey,
      Colors.deepPurple
    ];
    return SizedBox(
      height: 40,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: ListColors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                widget.ColorsData(ListColors[index]);
                currentIndex = index;
                setState(() {});
              },
              child: currentIndex == index
                  ? Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 2, color: Colors.white)),
                      child: CircleAvatar(
                        radius: 18,
                        backgroundColor: ListColors[index],
                      ),
                    )
                  : CircleAvatar(
                      radius: 16,
                      backgroundColor: ListColors[index],
                    ),
            ),
          );
        },
      ),
    );
  }
}
