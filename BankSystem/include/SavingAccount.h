#ifndef SAVINGACCOUNT_H
#define SAVINGACCOUNT_H


#include "BankAccount.h"
#include <string>


class SavingAccount : public BankAccount {
    private:
        double rate;

    public:
        SavingAccount(double b, const std::string& n, int num, double rate);

        void addInter();
        void showInfo() const override;

        double getRate() const;
        void setRate(double rate);
};
#endif