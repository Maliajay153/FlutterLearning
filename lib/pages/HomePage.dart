import 'package:demoforme/pages/ItemDes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nav Durga Textile",style: TextStyle(color: Colors.greenAccent)),
        backgroundColor: Colors.purple,
    ),
      body: GridView(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 2),
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
          children: [
            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
            child: Container(
              child:Column(
                children: [
                  Image.asset(height: 140,width:200,"assets/Images/shirt1.png"),
                  Text("Rs : 400",style: TextStyle(color: Colors.red,fontSize: 24),)],),
              color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt2.png"),
                    Text("Rs : 500",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt3.png"),
                    Text("Rs : 600",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt4.png"),
                    Text("Rs : 700",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt5.png"),
                    Text("Rs : 400",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt1.png"),
                    Text("Rs : 500",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt2.png"),
                    Text("Rs : 400",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt3.png"),
                    Text("Rs : 600",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt4.png"),
                    Text("Rs : 600",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

            InkWell(onTap: (){
              Navigator.pushNamed(context, "/ItemDes");
            },
              child: Container(
                child:Column(
                  children: [
                    Image.asset(height: 140,width:200,"assets/Images/shirt5.png"),
                    Text("Rs : 550",style: TextStyle(color: Colors.red,fontSize: 24),)],),
                color: Colors.green,margin: EdgeInsets.all(5.0),),),

          ],
        )
    );
  }
}
