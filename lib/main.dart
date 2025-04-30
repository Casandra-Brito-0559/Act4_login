import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff8dcef),
              Color(0xffd9cfff), // rosa superior
              Color(0xff7e0fcf), // púrpura inferior
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 260,
                    width: double.infinity,
                  ),
                  // Círculo rosa decorativo
                  Positioned(
                    top: -280,
                    left:
                        MediaQuery.of(context).size.width / 2 - 275, // centrado
                    child: Container(
                      width: 550,
                      height: 550,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFFF5FCF), // rosa claro
                      ),
                    ),
                  ),
                  Positioned(
                    top: 60,
                    left: 30,
                    child: Icon(Icons.star_rounded,
                        color: Color(0xFF7E3FF2), size: 100),
                  ),
                  Positioned(
                    top: 30,
                    right: 190,
                    child: Icon(Icons.star_rounded,
                        color: Color(0xFF00FFB3), size: 70),
                  ),
                  Positioned(
                    top: -100,
                    left: 80,
                    right: 0,
                    child: Image.asset(
                      'assets/libroxd.png',
                      height: 500,
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(horizontal: 30),
                decoration: BoxDecoration(
                  color: Color(0xFF85D4F2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Column(
                  children: [
                    Text(
                      'Inicio de Sesion',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1956A5),
                      ),
                    ),
                    SizedBox(height: 20),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Nombre de usuario',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Contraseña',
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600],
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 45),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFF5FCF),
                        foregroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        elevation: 5,
                      ),
                      child: Text(
                        'Iniciar',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Text.rich(
                TextSpan(
                  text: 'No tienes cuenta? ',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                  children: [
                    TextSpan(
                      text: 'Registrate',
                      style: TextStyle(
                          color: Color(0xFF00FFB3),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
