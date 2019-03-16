import 'package:flutter/material.dart';
import '../Pages/index_page.dart';
/**
 * @Author: Luke
 * @Date: 2019/3/16 15:13
 * @Sign: Cherish life and keep away from bugs!
 * @Project: flutter_app
 */

class OpenAnimation extends StatefulWidget {
  @override
  OpenAnimationState createState() => new OpenAnimationState();
}

class OpenAnimationState extends State<OpenAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: Image.asset('images/night_sky_bg.jpeg'),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);

    // float
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);

    _animation.addStatusListener((status) {
      // 动画状态完成
      if (status == AnimationStatus.completed) {
        //pushAndRemoveUntil predicate 是否删除路由
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) {
          return IndexPage();
        }),
            //predicate
            (route) => route == null);
      }
    });

    _animationController.forward();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  void didUpdateWidget(OpenAnimation oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }
}
