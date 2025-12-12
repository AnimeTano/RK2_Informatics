#include "BankAccount.h"
#include <iostream>


BankAccount::BankAccount(double b, const std::string& n, int num) : balance(b), name(n), accountnumber(num) {}


void BankAccount::deposit(double amount) {
    if (amount > 0){ 
        balance += amount;
        std::cout << "Successful deposit to bank account!\n";
    } else std::cout << "Error!\n";
}


bool BankAccount::withdraw(double amount) {
    if (amount <= 0) { return false; }

    if (amount <= balance){
        balance -= amount;
        std::cout << "Succesfully withdrawn!\n";
        return true;
    } else {
        return false;
    }
}


void BankAccount::showInfo() const {
    std::cout << "Balance: " << balance << "\n";
    std::cout << "Name: " << name << "\n";
    std::cout << "Number of account: " << accountnumber << "\n";
}


BankAccount::~BankAccount() {}
double BankAccount::getBalance() const { return balance; }
std::string BankAccount::getName() const { return name; }
int BankAccount::getNumber() const { return accountnumber; }