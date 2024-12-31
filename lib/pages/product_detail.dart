import 'package:bengkod/widget/support_widget.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget{
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState()=>_ProductDetailState();
}
class _ProductDetailState extends State<ProductDetail>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xFFfef5f1),
      body: Container(
        padding: EdgeInsets.only(top: 50,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20),
                  padding:EdgeInsets.all(10),
                  decoration: BoxDecoration(border: Border.all(),borderRadius: BorderRadius.circular(30)),
                  child: Icon(Icons.arrow_back_ios_new_outlined)),
              ),
               Center(child: Image.asset("images/iwatch.png",height: 400,))
          ]),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20))
              ),
              width: MediaQuery.of(context).size.width, child: Text("IWATCH",style: AppWidget.boldTextFieldStyle(),),
            ),
          ),
       
      ],),),
    );
  }
}