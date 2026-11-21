main() {
  BankAccount account1 = BankAccount(23512127, 50010.60);
  print(account1.balance);
  account1.deposit(5000);
  account1.withdraw(60000);
  print(account1.balance);
  BankAccount account2 = BankAccount.empty();
  print(account2.balance);
}

class BankAccount{
  int accountID;
  double balance;
  BankAccount(this.accountID, this.balance);
  BankAccount.empty() : accountID = 0, balance = 0;
  void withdraw(double amount){
    if (amount > 0 && balance >= amount){
      balance = balance - amount;
    }
    else {
      print("Not enough balance!");
    }

  }
  void deposit (double amount){
    if (amount > 0 ){
      balance = balance + amount;
    }
  }
}
