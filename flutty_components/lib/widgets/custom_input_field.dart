import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      initialValue: '',
      textCapitalization: TextCapitalization.words,
      onChanged: (value) {},
      validator: (value) {
        if (value == null) return 'campo requerido';
        return value.length < 3 ? 'Minimo de 3 letras' : null;
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: const InputDecoration(
        hintText: 'User Name',
        labelText: 'Name',
        helperText: 'letras namás',
        //prefixIcon: Icon(Icons.verified_user_outlined),

        suffixIcon: Icon(Icons.person_rounded),
        icon: Icon(Icons.assignment_ind_outlined),
        /*  border: OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))*/
      ),
    );
  }
}
