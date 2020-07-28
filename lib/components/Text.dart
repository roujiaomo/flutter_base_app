import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/*
Text(this.data, {
    Key key,
    this.style, // 设置文字样式，具体见下面的说明
    this.textAlign, // 文字对齐方式：（center居中，left左对齐，right右对齐，justfy两端对齐）
    this.textDirection, // 文本方向（ltr从左至右，rtl从右至左）
    this.locale,
    this.softWrap,// 是否自动换行（true自动换行，false单行显示，超出屏幕部分默认截断处理）
    this.overflow, // 文字超出屏幕之后的处理方式（clip裁剪，fade渐隐，ellipsis省略号）
    this.textScaleFactor, // 字体显示倍率
    this.maxLines, // maxLines 文字显示最大行数
    this.semanticsLabel,
  }

 const TextStyle({
    this.inherit = true,
    this.color,//文本样式
    this.fontSize,//字体大小
    this.fontWeight,//绘制文本时的字体粗细
    this.fontStyle,//字体变体
    this.letterSpacing,//水平字母之间的空间间隔(逻辑像素为单位),可以负值
    this.wordSpacing,//单词之间添加的空间间隔(逻辑像素为单位),可以负值
    this.textBaseline,//对齐文本的水平线
    this.height,//文本行与行的高度,作为字体代销的倍数
    this.locale,//用于选择区域定字形的语言环境
    this.foreground,//文本的前景色，不能与color共同设置
    this.background,//文本背景色
    this.shadows,//Flutter Decoration背景设定(边框，圆角，阴影,渐变等)
    this.decoration,//绘制文本装饰，添加上下划线，删除线
    this.decorationColor,//文本装饰的颜色
    this.decorationStyle,//文本装饰的样式，控制画虚线，点，波浪线
    this.debugLabel,
    String fontFamily,//使用字体的名称
    String package,
  })

 */
class TextSample extends StatefulWidget {
  _TextSampleState createState() => _TextSampleState();

}

class _TextSampleState extends State<TextSample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //设置appbar
      appBar: new AppBar(
        title: new Text('Flutter Demo'),
      ),
      //主体
      body: new Center(
        //在屏幕中央显示一个文本
        child: Text(
          "carson ho Demo", // 显示的内容
          style: TextStyle( // 通过Style设置样式，可根据上述样式进行设置，此处仅作最简单属性设置
              color: Colors.blue, //颜色
              fontSize: 14, // 字体大小
              fontWeight: FontWeight.bold), // 字体加粗
          //文本背景颜色
        ),
      ),
    );
  }

}

