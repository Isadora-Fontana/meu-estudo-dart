

void enviarEmail(String email){
  print("mensagem enviada para: $email");
}

void main(){

  // List<String> listaEmails = ['joao@gmail.com', 'isadora@gmail.com'];

  // listaEmails.add('enzo@gmail.com');

  // if (listaEmails.contains('enzo@gmail.com')==false){
  //   listaEmails.add('enzo@gmail.com');
  // }

  // for (String email in listaEmails){
  //   enviarEmail(email);
  // }

//   Set<String> setEmails = {'joao@gmail.com', 'isadora@gmail.com'};

//   setEmails.add('e.almeida@gmail.com');

//   setEmails.add('enzo@gmail.com');

//   if(setEmails.contains('enzo@gmail.com') == true){
//     print('email de enzo dentro do set');
//   }
//   else{
//     print('email não está dentro do set');
//   }


  Map<String,String> pessoasEmails = {
    'joao':'joao@gmail.com',
    'isadora':'isadora@gmail.com'
  };

  pessoasEmails['enzo']= 'enzo@gmail.com';

  for (String email in pessoasEmails.values){
    enviarEmail(email);
  }
}  