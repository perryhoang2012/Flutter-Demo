import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/constants.dart';

class ToDoList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ToDoListState();
  }
}

class ToDoListState extends State<ToDoList> {
  late List<String> itemList;
  late String stateToDoList = "";
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();
    itemList = [];
  }

  void addItem() {
    setState(() {
      itemList.add(stateToDoList);
    });
    stateToDoList = "";
    myController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                addItem();
              },
              child: const Icon(Icons.add),
            ),
            appBar: PreferredSize(
                //wrap with PreferredSize
                preferredSize: const Size.fromHeight(50),
                child: AppBar(
                    title: const Text(
                      "To do list",
                    ),
                    backgroundColor: colorGray)),
            body: Container(
                padding: const EdgeInsetsDirectional.symmetric(
                    vertical: 8, horizontal: 12),
                child: Column(
                  children: [
                    TextField(
                      style: const TextStyle(fontSize: 16),
                      controller: myController,
                      onChanged: (e) {
                        stateToDoList = e;
                      },
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.red)),
                          hintText: 'Type to do list',
                          labelText: 'To do list'),
                    ),
                    Expanded(
                        flex: 1,
                        child: ListView.builder(
                            padding: const EdgeInsets.all(8),
                            itemCount: itemList.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                  height: 50,
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                          width: 1.5, color: Color(0xd9d9d9d9)),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                            '#${index + 1} ${itemList[index]}',
                                            textAlign: TextAlign.center,
                                            style:
                                                const TextStyle(fontSize: 16),
                                          )),
                                      ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          minimumSize: const Size(30, 40),
                                          backgroundColor: Colors.red,
                                          shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8)),
                                          ),
                                        ),
                                        onPressed: () {
                                          deleteItemByIndex(index);
                                        },
                                        child: const Icon(Icons.delete,
                                            color: colorWhite, size: 18),
                                      ),
                                    ],
                                  ));
                            }))
                  ],
                ))));
  }

  void deleteItemByIndex(int index) {
    if (index >= 0 && index < itemList.length) {
      setState(() {
        itemList.removeAt(index);
      });
    }
  }
}
