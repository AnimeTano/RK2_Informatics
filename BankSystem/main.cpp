#include "include/SavingAccount.h"
#include <iostream>


int main(){
    std::cout << " ====Bank System==== \n\n";

    std::cout << "Initialize bank account\n";
    BankAccount account(271828.1828, "Geralt of Rivia", 3145);
    account.showInfo();

    std::cout << "\nOperations on bank account:\n";
    account.withdraw(35000);
    account.deposit(12341);
    account.withdraw(300000);
    account.showInfo();

    std::cout << "\n\nInitialize savings account\n";
    SavingAccount savings(200123.123, "Denis Karamyshev", 213, 10.2);
    savings.showInfo();
    
    std::cout << "\nOperations on savings account:\n";
    savings.withdraw(35000);
    savings.deposit(12341);
    savings.withdraw(300000);
    savings.addInter();
    savings.showInfo();
    
    return 0;
}