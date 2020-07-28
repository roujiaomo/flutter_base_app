
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
/*
RichText({
    Key key,
    @required this.text, // 区别于Text，RichText的text属性不是String类型，而是TextSpan，TextSpan用于指定文本片段的风格及手势交互，具体如下描述
    this.textAlign = TextAlign.start, // 文字对齐方式
    this.textDirection, // 文本方向（ltr从左至右，rtl从右至左）
    this.softWrap = true, // 是否自动换行（true自动换行，false单行显示，超出屏幕部分默认截断处理）
    this.overflow = TextOverflow.clip, // 文字超出屏幕之后的处理方式（clip裁剪，fade渐隐，ellipsis省略号）
    this.textScaleFactor = 1.0,// 字体显示倍率
    this.maxLines,// maxLines 文字显示最大行数
  })

// TextSpan是一个树状结构，children表示子节点。每个节点代表一个文本片段，祖先节点的style对所有子孙节点起作用。
// 注：当祖先节点的style中指定的值与自身节点的style发生冲突时，自身style中指定的值会覆盖掉前者

TextSpan({
    this.style, // 指定风格，类似text中的style
    this.text, // String，指定文本片段
    this.children, // List<TextSpan>类型，代表子节点，每个节点代表一个文本片段
    this.recognizer, // GestureRecognizer类型，指定该文本片段的手势交互，GestureRecognizer是一个抽象类（有许多子类，如点击监听器TapGestureRecognizer
  })
 */

class RichTextSample extends StatefulWidget{
  _RichTextSampleState  createState() => _RichTextSampleState();

}

class _RichTextSampleState extends State<RichTextSample>  {
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
          child: RichText( // 根节点的设置会影响下面两个子节点
            text: TextSpan(style: TextStyle(fontSize: 20), children: [
              // 每个子节点的设置会覆盖根节点的设置
              TextSpan(text: "Android ", style: TextStyle(
                color: Colors.blue, fontSize: 60,),
                recognizer: TapGestureRecognizer() // 设置点击事件，此处以点击监听器TapGestureRecognizer()为例
                  ..onTap = () {
                    print("点击了Android");
                  },),
              TextSpan(text: "iOS ",
                  style: TextStyle(color: Colors.red, fontSize: 50,)),
              TextSpan(text: "Web", style: TextStyle(
                color: Colors.green, fontSize: 40,)),
            ]),
            textDirection: TextDirection.ltr,
          )
      ),
    );
  }
}
