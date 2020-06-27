import 'atm_v1.dart';

void main() {
  var account = Account('111-222-33-01', 50000);
  if(account is Account) {
    String name = account.accountNumber;
    int amount = (account as Account).balance;
    print('account name is $name, amount is $amount');
  }

  String loginAccount = null;
  String playerName = loginAccount ?? 'Guest';
  print('Login Player is $playerName');

  //3.케스케이드
  Account account2 = Account('222-333-33-01', 60000)
  ..deposit(5000)
  ..transfer(account, 10000)
  ..withdraw(5000);
  print('account 2 balance is ${account2.balance}');

  //
  Account account3 = Account(null, 6000);
  print('account 3 is ${account3?.accountNumber}');
  
}