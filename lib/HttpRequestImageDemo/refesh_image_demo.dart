import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
/**
 * @Author: Luke
 * @Date: 2019/3/18 16:53
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class RefreshImageDemo extends StatefulWidget {
  @override
  RefreshImageDemoState createState() => new RefreshImageDemoState();
}

class RefreshImageDemoState extends State<RefreshImageDemo> {
  List<String> images;
  ScrollController _scrollController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    images = new List<String>();
    _scrollController = ScrollController();
    _tenImages();
    _scrollController.addListener(() {
      // 判断最大滚动范围
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        _tenImages();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Refresh Imgae Demo'),
        centerTitle: true,
      ),
      body: RefreshIndicator(
          child: ListView.builder(
            controller: _scrollController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                child: Image.network(
                  images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
          onRefresh: () async {
            await Future.delayed(Duration(seconds: 1));
            images.clear();
            _tenImages();
          }),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _scrollController.dispose();
  }

  @override
  void didUpdateWidget(RefreshImageDemo oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  void _tenImages() {
    for (int i = 0; i < 10; i++) {
      _requestImage();
    }
  }

  void _requestImage() async {
    final response = await http.get(
      'http://dog.ceo/api/breeds/image/random',
    );
    if (response.statusCode == 200) {
      setState(() {
        images.add(json.decode(response.body)['message']);
      });
    } else {
      throw Exception('图片加载失败');
    }
  }
}
