import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_flutter/screen/todolist.dart';

void main() {
  runApp(MaterialApp(
    home: ToDoList(),
    // SafeArea(
    //   child:
    //    Scaffold(
    //     body: MyWidget2(
    //         loading: false,
    //         title:
    //             "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),

    //     // appBar:
    //     //     AppBar(backgroundColor: Colors.red, title: const Text('test')),
    //     // body: const Text(
    //     //   'Hello 1111',
    //     // )
    //   ),
    // ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyWidget extends StatelessWidget {
  final bool loading;
  final String title;

  MyWidget({required this.loading, String? title}) : title = title ?? "Loading";

  @override
  Widget build(BuildContext context) {
    return loading
        ? const CircularProgressIndicator(
            color: Colors.yellow,
            backgroundColor: Colors.black12,
          )
        : Text(title);
  }
}

class MyWidget2 extends StatefulWidget {
  final bool loading;
  final String title;

  MyWidget2({required this.loading, String? title})
      : title = title ?? "Loading";

  @override
  State<StatefulWidget> createState() {
    return MyWidget2State();
  }
}

class MyWidget2State extends State<MyWidget2> {
  late bool _loading;
  late String _title;
  @override
  void initState() {
    super.initState();
    _loading = widget.loading;
    _title = widget.title;
  }

  @override
  Widget build(BuildContext context) {
    return _loading
        ? const CircularProgressIndicator(
            color: Colors.black,
            backgroundColor: Colors.black12,
          )
        : Container(
            padding: const EdgeInsetsDirectional.symmetric(
                vertical: 8, horizontal: 12),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Color(0xd9d9d9d9)),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Số điện thoại:'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('039592312312'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1.5, color: Color(0xd9d9d9d9)),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Địa chỉ:'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('123121 -1212 121'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xd9d9d9d9)),
                    ),
                  ),
                  child: const Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Text('Ngày sinh:'),
                      ),
                      Expanded(
                        flex: 2,
                        child: Text('20-12-2000'),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xd9d9d9d9)),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 50) * 0.5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                          ),
                          onPressed: onClickButton,
                          child: const Text('Cancel',
                              style: TextStyle(color: Colors.white)),
                        ),
                      ),
                      SizedBox(
                        width: (MediaQuery.of(context).size.width - 50) * 0.5,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.green,
                              shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                              ),
                            ),
                            onPressed: onClickButton,
                            child: const Text('Accept',
                                style: TextStyle(color: Colors.white))),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
    //  Row(
    //     mainAxisSize: MainAxisSize.max,
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: [
    //         ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               foregroundColor: Colors.green,
    //               backgroundColor: Colors.white,
    //             ),
    //             onPressed: onClickButton,
    //             child: const Text('aa')),
    //         ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               foregroundColor: Colors.green,
    //               backgroundColor: Colors.white,
    //             ),
    //             onPressed: onClickButton,
    //             child: const Text('aa')),
    //         ElevatedButton(
    //             style: ElevatedButton.styleFrom(
    //               foregroundColor: Colors.green,
    //               backgroundColor: Colors.white,
    //             ),
    //             onPressed: onClickButton,
    //             child: const Text('aa')),
    //       ]);
    // children: [
    //   SizedBox.expand(
    //   child: ElevatedButton(
    //       style: ElevatedButton.styleFrom(
    //         foregroundColor: Colors.green,
    //         backgroundColor: Colors.white,
    //       ),
    //       onPressed: onClickButton,
    //       child: const Text('Hihih')),
    // )
    //   Container(
    //   color: Colors.red,
    //   width: 200,
    //   height: 200,
    //   padding: const EdgeInsets.all(10),
    //   alignment: const Alignment(0, 0),
    //   child: const Text('hihi',
    //       style: TextStyle(fontSize: 24, color: Colors.white)),
    // )
    // ElevatedButton(
    //     onPressed: onClickButton,
    //     style: ElevatedButton.styleFrom(
    //       foregroundColor: Colors.green,
    //       backgroundColor: Colors.white,
    //     ),
    //     child: const Text('Click me',
    //         style: TextStyle(color: Colors.blueGrey)))
    // TextButton(
    //     onPressed: onClickButton,
    //     style: TextButton.styleFrom(
    //         foregroundColor: Colors.pink,
    //         backgroundColor: Colors.white,
    //         // minimumSize: Size(120, 80)
    //         padding: const EdgeInsets.symmetric(
    //             vertical: 12, horizontal: 10),
    //         shape: const RoundedRectangleBorder(
    //           borderRadius: BorderRadius.all(Radius.circular(8)),
    //         ),
    //         elevation: 2,
    //         shadowColor: Colors.black45.withOpacity(0.5),
    //         side: const BorderSide(
    //           width: 1,
    //           color: Color(0xd9d9d9d9),
    //         ),
    //         disabledBackgroundColor: Colors.grey),
    //     child: const Text('Click me',
    //         style: TextStyle(color: Colors.blueGrey)))

    // const Card(
    //     color: Colors.amberAccent,
    //     margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
    //     child: Padding(
    //       padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
    //       child: Text('Huynh ne!!!',
    //           style: TextStyle(
    //               fontSize: 20,
    //               fontWeight: FontWeight.w500,
    //               color: Colors.brown)),
    //     ));
    // Text(_title,
    //     textDirection: TextDirection.ltr,
    //     textAlign: TextAlign.left,
    //     maxLines: 4,
    //     overflow: TextOverflow.ellipsis,
    //     // ignore: deprecated_member_use
    //     textScaleFactor: 1.2,
    //     selectionColor: Colors.blue,
    //     style: const TextStyle(
    //         color: Colors.red, fontSize: 14, fontWeight: FontWeight.w500));
  }

  void onClickButton() {
    // setState(() {
    //   _loading = true;
    // });
    print('click me');
  }
}
