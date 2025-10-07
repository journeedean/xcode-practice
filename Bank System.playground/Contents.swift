import UIKit
/*
class VirtualBankSystem{
    var accountType = ""
    var isOpened = true
    func greeting() {
        print("Welcome to your virtual bank system.")
    }
    func onBoard () {
        print("What kind of bank account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    func makeAccount (numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
        case 1:
            accountType = "debit"
        case 2:
            accountType = "credit"
        default:
            print("Invalid input: \(numberPadKey)")
            return
            }
        print("You have opened a \(accountType) account.")
    }
    
    func moneyTransfer(transferType: String, transferAmount: Int, bankAccount: inout BankAccount){
        switch transferType {
        case "withdraw":
            if accountType == "credit"{
                bankAccount.creditWithdraw(transferAmount)
            }
            else if accountType == "debit"{
                bankAccount.debitWithdraw(transferAmount)
            }
        case "deposit":
            if accountType == "credit"{
                bankAccount.creditDeposit(transferAmount)
            }
            else if accountType == "debit"{
                bankAccount.debitDeposit(transferAmount)
            }
        default:
            break
        }
    }
    
    func checkBalance (bankAccount: BankAccount){
        switch accountType {
        case "credit":
            print("\(bankAccount.creditBalanceInfo)")
        case "debit":
            print("\(bankAccount.debitBalanceInfo)")
        default:
            break
        }
    }

}


struct BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    var creditLimit = 100
    var debitBalanceInfo: String {
        return "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Available credit: $\(availableCredit)"
    }
    
    mutating func debitDeposit(_ amount: Int) {
        debitBalance += amount
        
        if true {
            print("Deposited $\(amount). \(debitBalanceInfo)")
        }
    }
    
    mutating func creditDeposit(_ amount: Int) {
        creditBalance += amount
        if true {
            print("Credit $\(amount). \(creditBalanceInfo)")
        }
        if creditBalance == 0 {
            print("Paid off credit balance.")
        }
        else if creditBalance > 0 {
                print("Overpaid credit balance.")
        }
    }
    
    mutating func debitWithdraw (_ amount: Int) {
        if amount > debitBalance {
            print("Insufficient fund to withdraw $\(amount). \(debitBalanceInfo)")
        }
        else {
            debitBalance -= amount
            print("Debit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    
    mutating func creditWithdraw (_ amount: Int) {
        if amount > availableCredit {
            print("insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        }
        else {
            creditBalance -= amount
            print("Credit withdraw:$\(amount). \(creditBalanceInfo)")
        }
    }
}
let virtualBankSystem = VirtualBankSystem()
virtualBankSystem.greeting()
repeat {
    virtualBankSystem.onBoard()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.makeAccount(numberPadKey: numberPadKey)
}
while virtualBankSystem.accountType == ""

let transferAmount = 50
print("Transfer amount: $\(transferAmount)")
var bankAccount = BankAccount()
        repeat {
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4.Close the system")
    let option = Int.random(in: 1...5)
    print("\(option)")
    switch option{
    case 1:
        virtualBankSystem.checkBalance  (bankAccount: bankAccount)
    case 2:
        virtualBankSystem.moneyTransfer(transferType: "withdraw", transferAmount: transferAmount, bankAccount: &bankAccount)
    case 3:
        virtualBankSystem.moneyTransfer(transferType: "deposit",transferAmount: transferAmount, bankAccount: &bankAccount)
    case 4:
        virtualBankSystem.isOpened = false
        print("The system is closed.")
    default:
        break
    }
}
    while virtualBankSystem.isOpened

*/





