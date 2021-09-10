import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'মিথ্যা খবর যাচাই',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'মিথ্যা খবর যাচাই'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isReset = true;
  bool _isLoading = false;
  String news = '';
  String result = '';
  TextEditingController _controller = TextEditingController();

  Future<String> _getResult(String data) async {
    // print(data);
    var jsonData = jsonEncode({'data': '$data'});
    var response = await http.post(
      Uri.parse('https://banfake.herokuapp.com'),
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonData,
    );
    return jsonDecode(response.body)['result'];
  }

  PreferredSizeWidget appBar() {
    return AppBar(
      title: Text(widget.title),
      centerTitle: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    var bar = appBar();
    return Scaffold(
      appBar: bar,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height - bar.preferredSize.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text('সত্য নাকি মিথ্যা খবর যাচাই করুন।'),
              ),
              Container(
                margin: const EdgeInsets.all(30.0),
                child: TextFormField(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      news = value;
                    });
                  },
                  maxLines: 8,
                  minLines: 1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'খবর লিখুন',
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _isLoading
                      ? Container()
                      : MaterialButton(
                          onPressed: () {
                            _controller.clear();
                            setState(() {
                              _isReset = true;
                            });
                          },
                          child: Text(
                            'পুনরায়',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.orange,
                        ),
                  SizedBox(
                    width: 20,
                  ),
                  _isLoading
                      ? CircularProgressIndicator()
                      : MaterialButton(
                          onPressed: () async {
                            setState(() {
                              _isLoading = true;
                              _isReset = true;
                            });
                            _getResult(news).then((value) {
                              setState(() {
                                result = value;
                                _isLoading = false;
                                _isReset = false;
                              });
                            });
                          },
                          child: Text(
                            'যাচাই করুন',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          color: Colors.blue,
                        ),
                ],
              ),
              _isReset
                  ? Container()
                  : Container(
                      margin: EdgeInsets.all(30),
                      child: Text(
                        '$result',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
