import 'package:flutter/material.dart';
import 'package:book/pages/registration.dart';
import 'package:book/pages/shopMain.dart';

class Autorization extends StatelessWidget {
  const Autorization({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Авторизация'),
            backgroundColor: Color(0xFFC6B1FF)
        ),
        body: Container(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0,bottom: 16.0, top: 8.0) ,
            //color: const Color(0xFFE2BAE8),
            child: Row(
                children: [
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 6, child: Center(
                    child: Column(
                        children: [

                          Expanded(
                            flex: 4,
                            child:
                            ListView(
                              children: [

                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: const Text('Логин:',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                TextField(),
                                Text(''),
                                const Align(
                                  alignment: Alignment.topLeft,
                                  child: const Text('Пароль:',
                                    style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black
                                    ),
                                  ),
                                ),
                                TextField(
                                  obscureText: true,
                                ),
                                Text(''),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xFFC6B1FF),
                                          foregroundColor: Colors.black87,
                                        ),
                                        child: const Text('Войти'),
                                        onPressed: (){
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                const ShopMain()),
                                          );
                                        }
                                    )
                                ),
                              ],
                            ),
                          ),

                          //
                          Expanded(flex: 1, child:

                          Container(
                            child:
                            Align(
                              alignment: Alignment.bottomCenter,
                              child:
                              TextButton(
                                child: const Text('Нет аккаунта? Зарегистрируйтесь.'),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Registration()),
                                  );
                                },
                              ),

                            ),
                          ),
                          ),

                        ]
                    ),
                  ),
                  ),
                  Expanded(flex: 2, child: Container())
                ]
            )
        )
    );
  }
}