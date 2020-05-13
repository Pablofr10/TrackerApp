
import 'package:flutter/material.dart';
import 'package:iet_sorveteria/pages/home/home_page.dart';
import 'package:iet_sorveteria/utils/nav.dart';
import 'package:iet_sorveteria/widgets/form_text.dart';

class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  final _tLogin = TextEditingController();
  final _tSenha = TextEditingController();

  final _focusSenha = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: <Widget>[
            Container(
              height: 300,
              child: Image.asset("assets/images/login_page.png"),
            ),
            Center(
              child: Container(
                padding: EdgeInsets.all(10),
                child: _form(),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Center(
                  child: Text(
                "Cadastre-se",
                style: TextStyle(color: Colors.white, fontSize: 25),
              )),
            )
          ],
        ),
      ),
    );
  }

  Form _form() {
    return Form(
      key: _formKey,
      child: Column(
        children: <Widget>[
          FormTextLogin(
            Icons.person,
            "Digite seu E-mail",
            controller: _tLogin,
            validator: _validarLogin,
            keybordType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            nextFocus: _focusSenha,
          ),
          FormTextLogin(Icons.vpn_key, "Digite sua Senha",
              password: true,
              controller: _tSenha,
              validator: _validarSenha,
              focusNode: _focusSenha,
              keybordType: TextInputType.text),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 40,
            width: 400,
            child: RaisedButton(
              color: Colors.green,
              child: Text(
                "Entrar",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              onPressed: _onClickLogin,
            ),
          ),
        ],
      ),
    );
  }

  _onClickLogin() async {
    if (!_formKey.currentState.validate()) {
      return;
    }

    return push(context, HomePage(), replace: true);
  }
  
  String _validarLogin(String text) {
    if (text.isEmpty) {
      return "Campo obrigatório";
    }
    return null;
  }

  String _validarSenha(String text) {
    if (text.isEmpty) {
      return "campo obrigatório";
    }
    if (text.length < 3) {
      return "A senha precisa ter no mínino 6 números";
    }
    return null;
  }
}
