import 'package:flutter/material.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailCtl = TextEditingController();
  final _passCtl = TextEditingController();
  bool _loading = false;

  void _login() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _loading = true);
    await Future.delayed(Duration(seconds: 1)); // simulate auth
    setState(() => _loading = false);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_) => Dashboard()));
  }

  @override
  void dispose() {
    _emailCtl.dispose();
    _passCtl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              SizedBox(height: 20),
              TextFormField(
                controller: _emailCtl,
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (v) {
                  if (v == null || v.trim().isEmpty) return 'Enter email';
                  if (!v.contains('@')) return 'Enter a valid email';
                  return null;
                },
              ),
              TextFormField(
                controller: _passCtl,
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (v) => (v==null || v.length<6) ? 'Min 6 chars' : null,
              ),
              SizedBox(height: 20),
              _loading ? CircularProgressIndicator() :
              ElevatedButton(
                onPressed: _login,
                child: Text('Login'),
              ),
              SizedBox(height: 12),
              OutlinedButton.icon(
                onPressed: () {
                  // Placeholder for Google Sign-In
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Google Sign-In not configured')));
                },
                icon: Icon(Icons.account_circle),
                label: Text('Sign in with Google'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
