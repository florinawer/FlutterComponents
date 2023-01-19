import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //key es para mantener referencia a los widgets
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'user_name': 'Ves',
      'email': 'Puxi@google.com',
      'password': 'puxi'
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                //se pasan por parametro los valores y se reciben por constructor
                CustomInputField(
                  labelText: "user_name",
                  hintText: "user_name",
                  formProperty: 'user_name',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),

                CustomInputField(
                  labelText: "email", hintText: "email",
                  //se le pasa por constructor el valor del input para personalizar input
                  keyBoardType: TextInputType.emailAddress,

                  //en el form type se pone el valor de Mapper
                  formProperty: 'email', formValues: formValues,
                ),
                const SizedBox(height: 30),

                CustomInputField(
                  labelText: "password",
                  hintText: "password",
                  isPassword: true,
                  formProperty: 'password',
                  formValues: formValues,
                ),
                const SizedBox(height: 30),

                ElevatedButton(
                  child: const SizedBox(
                      width: double.infinity,
                      child: Center(child: Text('Save'))),
                  onPressed: () {
                    FocusScope.of(context).requestFocus(FocusNode());

                    //valida el estado y niega el validate
                    if (!myFormKey.currentState!.validate()) {
                      print('form no valid');
                      return;
                    }

                    //*imprimir valores del form
                    print(formValues);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
