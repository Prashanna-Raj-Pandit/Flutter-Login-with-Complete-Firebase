
class SignUpWithEmailAndPasswordFailure{
  final String message;
  SignUpWithEmailAndPasswordFailure([this.message='An Unknown Error occurred']);

  factory SignUpWithEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password':
        return SignUpWithEmailAndPasswordFailure('Please enter a strong password');
      case 'invalid-email':
        return SignUpWithEmailAndPasswordFailure('Email is not valid');
      case 'email-already-in-use':
        return SignUpWithEmailAndPasswordFailure('Account Already Exists');
      case'user-disabled':
        return SignUpWithEmailAndPasswordFailure('The user has been disabled. please contact support for help');
      default:
        return SignUpWithEmailAndPasswordFailure();
    }
  }
}