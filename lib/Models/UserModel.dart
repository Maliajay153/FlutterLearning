class UserModel {
  late String fname;
  late String lname;
  late String email;
  late String pass;

  UserModel(this.fname, this.lname, this.email, this.pass);

  Map<String,dynamic> toMap() {
    var map = <String,dynamic>{'fname': fname,'lname': lname,'email': email,'pass': pass  };
    return map;
  }

  UserModel.fromMap(Map<String,dynamic>map){
    fname  = map['fname'];
    lname = map['lname'];
    email = map['email'];
    pass = map['pass'];
  }



}