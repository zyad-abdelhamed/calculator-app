import 'package:flutter/material.dart';

const List<String> list = <String>[
  'Milliseconds (ms)',
  'Seconds (s)',
  'Minutes (m)',
  'Hours (h)',
  'Days (d)',
  'Weeks (wk)'
];
String dropdownValue = list.first;
const List<String> list2 = <String>[
  'Milliseconds (ms)',
  'Seconds (s)',
  'Minutes (m)',
  'Hours (h)',
  'Days (d)',
  'Weeks (wk)'
];
String dropdownValue2 = list.first;

class Scale extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ScaleState();
  }
}

class ScaleState extends State<Scale> {
  TextEditingController num = TextEditingController();
  double number = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.greenAccent[700],
          title: Text(
            "Unit Converter",
            style: TextStyle(fontSize: 25),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(child: Text("Time")),
              Tab(
                child: Text(
                  "Length",
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: [
          Container(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "From:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  DropdownMenuExample(),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      number = (value.isEmpty) ? 0 : double.parse(value);

                      if (dropdownValue == 'Milliseconds (ms)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number;
                            break;
                          case 'Seconds (s)':
                            number = number / 1000;
                            break;
                          case 'Minutes (m)':
                            number = number / (60 * 1000);
                            break;
                          case 'Hours (h)':
                            number = number / (60 * 60 * 1000);
                            break;
                          case 'Days (d)':
                            number = number / (60 * 60 * 24 * 1000);
                            break;
                          case 'Weeks (wk)':
                            number = number / (60 * 60 * 24 * 1000 * 7);
                            break;
                        }
                      } else if (dropdownValue == 'Seconds (s)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number * 1000;
                            break;
                          case 'Seconds (s)':
                            number = number;
                            break;
                          case 'Minutes (m)':
                            number = number / (60);
                            break;
                          case 'Hours (h)':
                            number = number / (60 * 60);
                            break;
                          case 'Days (d)':
                            number = number / (60 * 60 * 24);
                            break;
                          case 'Weeks (wk)':
                            number = number / (60 * 60 * 24 * 7);
                            break;
                        }
                      } else if (dropdownValue == 'Minutes (m)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number * 1000 * 60;
                            break;
                          case 'Seconds (s)':
                            number = number * 60;
                            break;
                          case 'Minutes (m)':
                            number = number;
                            break;
                          case 'Hours (h)':
                            number = number / (60);
                            break;
                          case 'Days (d)':
                            number = number / (60 * 24);
                            break;
                          case 'Weeks (wk)':
                            number = number / (60 * 24 * 7);
                            break;
                        }
                      } else if (dropdownValue == 'Hours (h)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number * 1000 * 60 * 60;
                            break;
                          case 'Seconds (s)':
                            number = number * 60 * 60;
                            break;
                          case 'Minutes (m)':
                            number = number * 60;
                            break;
                          case 'Hours (h)':
                            number = number;
                            break;
                          case 'Days (d)':
                            number = number / (24);
                            break;
                          case 'Weeks (wk)':
                            number = number / (24 * 7);
                            break;
                        }
                      } else if (dropdownValue == 'Days (d)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number * 1000 * 60 * 60 * 24;
                            break;
                          case 'Seconds (s)':
                            number = number * 60 * 60 * 24;
                            break;
                          case 'Minutes (m)':
                            number = number * 60 * 24;
                            break;
                          case 'Hours (h)':
                            number = number * 24;
                            break;
                          case 'Days (d)':
                            number = number;
                            break;
                          case 'Weeks (wk)':
                            number = number / (7);
                            break;
                        }
                      } else if (dropdownValue == 'Weeks (wk)') {
                        switch (dropdownValue2) {
                          case 'Milliseconds (ms)':
                            number = number * 1000 * 60 * 60 * 24 * 7;
                            break;
                          case 'Seconds (s)':
                            number = number * 60 * 60 * 24 * 7;
                            break;
                          case 'Minutes (m)':
                            number = number * 60 * 24 * 7;
                            break;
                          case 'Hours (h)':
                            number = number * 24 * 7;
                            break;
                          case 'Days (d)':
                            number = number * 7;
                            break;
                          case 'Weeks (wk)':
                            number = number;
                            break;
                        }
                      }
                    });
                  },
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 30),
                  controller: num,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To:",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 37,
                  ),
                  DropdownMenuExample2(),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  readOnly: true,
                  decoration: InputDecoration(
                      hintText: "$number",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 30)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                child: CircleAvatar(
                  child: Text(
                    "C",
                    style: TextStyle(fontSize: 30, color: Colors.red),
                  ),
                  radius: 30,
                  backgroundColor: Colors.black12,
                ),
                onTap: () {
                  setState(() {
                    num.text = "";
                    number = 0;
                  });
                },
              )
            ],
          )),
          Text(
            "جارى ال",
            style: TextStyle(fontSize: 100),
          ),
        ]),
      ),
    );
  }
}

class DropdownMenuExample extends StatefulWidget {
  const DropdownMenuExample({super.key});

  @override
  State<DropdownMenuExample> createState() => _DropdownMenuExampleState();
}

class _DropdownMenuExampleState extends State<DropdownMenuExample> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}

class DropdownMenuExample2 extends StatefulWidget {
  const DropdownMenuExample2({super.key});

  @override
  State<DropdownMenuExample2> createState() => _DropdownMenuExampleState2();
}

class _DropdownMenuExampleState2 extends State<DropdownMenuExample2> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: dropdownValue2,
      onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          dropdownValue2 = value!;
        });
      },
      items: list2.map<DropdownMenuItem<String>>((String value2) {
        return DropdownMenuItem<String>(
          value: value2,
          child: Text(value2),
        );
      }).toList(),
    );
  }
}
