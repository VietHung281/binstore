
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    return Scaffold(
      // appBar: AppBar(
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
            const Text('Test', style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
            Text('Xin Chào!', style: TextStyle(fontSize: 30, color:Color(0xFF363f93)),),
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
                labelText: 'Nhập Mật Khẩu'
              ),   
              keyboardType: TextInputType.numberWithOptions(),       
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
                    child: const Text('Đăng nhập', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),),
                )
              ],
            ),
            SizedBox(height: height*0.05),
            const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Or',style: TextStyle(fontSize: 16, color: Color(0xFF363f93)),)
                  ],
              ),
            SizedBox(height: height*0.01),
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(               
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.black.withOpacity(0.5),
                      elevation: 10.0, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),  
                    ),
                    padding: EdgeInsets.zero,
                    minimumSize: Size(80, 80),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/logo_fb.png',width: 60,height: 60,fit: BoxFit.cover,)
                    ),
                    ),
                    ),
                  ],  
                ),
                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(               
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.black.withOpacity(0.5),
                      elevation: 10.0, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),  
                    ),
                    padding: EdgeInsets.zero,
                    minimumSize: Size(80, 80),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/logo_gg.jpg',width: 60,height: 60,fit: BoxFit.cover,)
                    ),
                    ),
                    ),
                  ],
                ),                
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(               
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.black.withOpacity(0.5),
                      elevation: 10.0, 
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),  
                    ),
                    padding: EdgeInsets.zero,
                    minimumSize: Size(80, 80),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/logo_apple.png',width: 60,height: 60,fit: BoxFit.cover,)
                    ),
                    ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(               
                  child: ElevatedButton(
                    onPressed: () {  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.black.withOpacity(0.5),
                      elevation: 10.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),  
                    ),
                    padding: EdgeInsets.zero,
                    minimumSize: Size(80, 80),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset('assets/images/logo_tw.png',width: 60,height: 60,fit: BoxFit.cover,)
                    ),
                    ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: height*0.05,),
            const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Đăng Ký',style: TextStyle(fontSize: 16, color: Color(0xFF363f93)),),
                  Text('Quên Mật Khẩu',style: TextStyle(fontSize: 16)),
                  ],
              ),
            ],
          )
        ),
       ),
    );
  }
}