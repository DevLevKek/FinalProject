import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("lib/asset/image/Android Large - 1.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 0,
                ),

                //LOGO
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "LOGO",
                      style: TextStyle(
                          color: Color.fromARGB(255, 39, 68, 157),
                          fontWeight: FontWeight.bold,
                          fontSize: 48),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Transform.rotate(
                      angle: 172,
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 8,
                            color: const Color.fromARGB(255, 39, 68, 157),
                          ),
                        ),
                      ),
                    )
                  ],
                ),

                //ОТСТУП
                const SizedBox(
                  height: 60,
                ),

                //ПОЛЯ ВВОДА
                Column(
                  children: [
                    //ПОЛЕ ВВОДА ЛОГИНА
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(50),
                        elevation: 16,
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 18),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            prefixIcon: const Icon(
                              Icons.person_outline,
                              color: Color.fromARGB(255, 39, 68, 157),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

                    //ПОЛЕ ВВОДА ПАРОЛЯ
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0),
                      child: Material(
                        borderRadius: BorderRadius.circular(50),
                        elevation: 16,
                        child: TextField(
                          textAlign: TextAlign.start,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 18),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  width: 0),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            prefixIcon: const Icon(
                              Icons.lock_outline,
                              color: Color.fromARGB(255, 39, 68, 157),
                            ),
                            suffixIcon: const Icon(
                              Icons.question_mark,
                              color: Color.fromARGB(255, 118, 118, 118),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //ОТСТУП
                    const SizedBox(
                      height: 16,
                    ),

                    //КНОПКА ВХОДА
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        borderRadius: BorderRadius.circular(50),
                        elevation: 8,
                        child: SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: Colors.white),
                            child: const Text(
                              "Login",
                              style: TextStyle(
                                  color: Color.fromARGB(255, 39, 68, 157),
                                  fontSize: 16),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                //ОТСТУП
                const SizedBox(
                  height: 60,
                ),

                //ИКОНКИ
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.remove_red_eye_outlined,
                      color: Color.fromARGB(129, 93, 117, 188),
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.qr_code_2_sharp,
                      color: Color.fromARGB(255, 39, 68, 157),
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.local_post_office_outlined,
                      color: Color.fromARGB(129, 93, 117, 188),
                      size: 26,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.map_rounded,
                      color: Color.fromARGB(129, 93, 117, 188),
                      size: 26,
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
