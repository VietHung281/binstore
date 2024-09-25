import 'package:flutter/material.dart';

class Loguppage extends StatelessWidget {
  const Loguppage({super.key});

// static final List<Widget> _wiggetOption = <Widget> {

// },

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      //  appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //  ),
       backgroundColor: Color(0xFFffffff),
       body: Container(
        padding: const EdgeInsets.only(left: 40, right: 40),
        child: Form(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height*0.04),
            const Text('Bin Store', style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
            Text('Xin Chào!', style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
            SizedBox(height: height*0.05),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nhập Họ tên'
              ),
              validator: (value){
                if(value!.isEmpty || !RegExp(r'^[a-z A-z + $]'). hasMatch(value)){
                  return "Họ tên không hợp lệ";
                }else{
                  return null;
                }
              },
            ),
            SizedBox(height: height*0.05),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nhập Email'
              ),
              validator: (value){
                if(value!.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$'). hasMatch(value)){
                  return "Email không hợp lệ";
                }else{
                  return null;
                }
              },
            ),
            SizedBox(height: height*0.05),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nhập SĐT'
              ),
              validator: (value){
                if(value!.isEmpty || !RegExp(r'^(0|\+84)(3|5|7|8|9)\d{8}$'). hasMatch(value)){
                  return "Số điện thoại không hợp lệ";
                }else{
                  return null;
                }
              },
            ),
            SizedBox(height: height*0.05),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Nhập Mật Khẩu'
              ),          
            ),
            SizedBox(height: height*0.05),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    ),
                    child: const Text('Đăng kí', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),),
                )
              ],
            ),
            SizedBox(height: height*0.05,),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Đăng nhập',style: TextStyle(fontSize: 16, color: Color(0xFF363f93)),),
                  Text('Quên Mật Khẩu',style: TextStyle(fontSize: 16)),
                  ],
              ),
          ]         
        )
        ),
       ),
    );
  }
}