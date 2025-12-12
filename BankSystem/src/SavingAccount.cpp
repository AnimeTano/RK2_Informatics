#include "SavingAccount.h"
#include <iostream>


SavingAccount::SavingAccount(double b, const std::string& n, int num, double r) : BankAccount(b, n, num), rate(r) {}


void SavingAccount::addInter(){
    double inter = getBalance() * (rate / 100);
    setBalance(getBalance() + inter);
    std::cout << "Interest accured: " << inter << "\n";
}


void SavingAccount::showInfo() const {
    BankAccount::showInfo();
}


double SavingAccount::getRate() const { return rate; }
void SavingAccount::setRate(double r) { rate = r; }