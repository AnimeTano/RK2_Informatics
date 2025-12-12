#ifndef BANKACCOUNT_H
#define BANKACCOUNT_H


#include <string>


class BankAccount {
    protected:
        double balance;
        std::string name;
        int accountnumber;
    
    public:
        BankAccount(double b, const std::string& n, int num);

        void deposit(double amount);
        bool withdraw(double amount);

        virtual void showInfo() const;
        virtual ~BankAccount();

        double getBalance() const;
        int getNumber() const;
        std::string getName() const;

        void setBalance (double b) { balance = b; }
        void setName (const std::string& n) { name = n; }
        void setNumber (int n) { accountnumber = n; }
};
#endif