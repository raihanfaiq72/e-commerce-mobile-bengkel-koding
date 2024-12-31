import 'package:bengkod/widget/support_widget.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget{
  const Home({super.key});

  @override
  State<Home> createState()=>_HomeState();
}

class _HomeState extends State<Home>{
  List categories = [
    "images/iwatch.png",
    "images/iwatch.png",
    "images/iwatch.png",
    "images/iwatch.png",
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body:Container(
        margin: EdgeInsets.only(top: 50,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "helo liana",
                    style: AppWidget.boldTextFieldStyle(),
                  ),
                  Text(
            "Good Morning",
            style: AppWidget.lightTextFieldStyle(),
           )
                ],
              ),
              ClipRRect(
                borderRadius:BorderRadius.circular(30),
                child: Image.asset("images/iwatch.png",height: 70,width: 70,fit: BoxFit.cover,)
                )
            ],
           ),
           SizedBox(height: 30.0,),
           Container(
            decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
            width: MediaQuery.of(context).size.width,
            child: TextField(
              decoration: InputDecoration(border: InputBorder.none,hintText: "cari produk disini",hintStyle: AppWidget.lightTextFieldStyle(),prefixIcon: Icon(Icons.search,color: Colors.black,)),
            ),
           ),
           SizedBox(height: 20.0,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Kategori",style: AppWidget.semiboldTextFieldStyle()),
              Text("see all",style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 18,fontWeight: FontWeight.w500),)
            ],
           ),
           SizedBox(height:20 ,),
           Row(
             children: [
              Container(
                height: 130,
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(color: Color(0xFFFD6F3E),borderRadius: BorderRadius.circular(10)),
                child: Center(child: Text("All",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
              ),
               Expanded(
                 child: Container(
                  height: 130,
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    itemCount: categories.length,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index){
                      return CategoryTile(image: categories[index]);
                    },
                  ),
                 ),
               ),
             ],
           ),
           SizedBox(height: 20,),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("All Produk",style: AppWidget.semiboldTextFieldStyle()),
              Text("see all",
              style: TextStyle(
                color: Color(0xFFfd6f3e),
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              )
            ],
           ),
           SizedBox(height: 20,),
           Container(
            height: 240,
             child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Image.asset("images/iwatch.png",height: 120,width: 120,fit: BoxFit.cover,),
                    Text("SmartWatch",style: AppWidget.semiboldTextFieldStyle(),),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text("Rp100K",style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0xFFfd6f3e),borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add,color:Colors.white)
                      )
                    ],)
                  ],),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Image.asset("images/iwatch.png",height: 120,width: 120,fit: BoxFit.cover,),
                    Text("SmartWatch",style: AppWidget.semiboldTextFieldStyle(),),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text("Rp100K",style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0xFFfd6f3e),borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add,color:Colors.white)
                      )
                    ],)
                  ],),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Image.asset("images/iwatch.png",height: 120,width: 120,fit: BoxFit.cover,),
                    Text("SmartWatch",style: AppWidget.semiboldTextFieldStyle(),),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text("Rp100K",style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0xFFfd6f3e),borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add,color:Colors.white)
                      )
                    ],)
                  ],),
                ),
                Container(
                  margin: EdgeInsets.only(right: 20),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                  child: Column(children: [
                    Image.asset("images/iwatch.png",height: 120,width: 120,fit: BoxFit.cover,),
                    Text("SmartWatch",style: AppWidget.semiboldTextFieldStyle(),),
                    SizedBox(height: 10,),
                    Row(children: [
                      Text("Rp100K",style: TextStyle(color: Color(0xFFfd6f3e),fontSize: 22,fontWeight: FontWeight.bold),),
                      SizedBox(width: 50,),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(color: Color(0xFFfd6f3e),borderRadius: BorderRadius.circular(10)),
                        child: Icon(Icons.add,color:Colors.white)
                      )
                    ],)
                  ],),
                ),
              ],
             ),
           ),
           
          ],
        ),
      )
    );
  }
}

class CategoryTile extends StatelessWidget{
  String image;
  CategoryTile({required this.image});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.asset(image,height: 50,width: 50,fit: BoxFit.cover,), 
        Icon(Icons.arrow_forward)
      ],),
    );
  }
}