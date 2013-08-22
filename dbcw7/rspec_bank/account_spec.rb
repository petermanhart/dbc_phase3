require "rspec"

require_relative "account"

describe Account do

  let(:acct_number) { "1" * 10 }
  let(:account) { Account.new(acct_number)}

  describe "#initialize" do
    context "with valid acct_number" do
      it "creates a new Account" do
        account.class.should eq(Account)
      end

      context "and with starting_balance" do
        it "should make transactions consist of starting_balance" do
          Account.new("1"*10, 100).transactions.should eq [100]
        end
      end

    end

    context "with invalid acct_number" do
      it "throws an argument error" do
        expect { Account.new("1")}.to raise_error(InvalidAccountNumberError)
      end
    end
  end

  describe "#transactions" do
    it "returns the transactions for that account" do
      Account.new("1"*10).transactions.should eq [0]
      account.deposit!(305)
      account.transactions.should eq [0,305]
    end
  end

  describe "#balance" do
    context "with new account" do
      it "should return starting_balance" do
        Account.new("1"*10, 100).balance.should eq 100
      end
    end
    context "with existing account" do
      it "should return the sum of the transactions" do
        account.deposit!(20)
        account.withdraw!(3)
        account.deposit!(23)
        account.balance.should eq(40)
      end
    end
  end

  describe "#acct_number" do
    it "should mask all but the last 4 digits" do
      account.acct_number.should eq("*"*6 + "1111")
    end

  end

  describe "deposit!" do
    context "with positive input" do
      it "should change the account balance" do
        expect { account.deposit!(20) }.to change(account, :balance)
      end

      it "returns the account balance" do
        account.deposit!(20).should eq 20
      end
    end

    context "with negative input" do
      it "throws a NegativeDepositError" do
        expect { account.deposit!(-5)}.to raise_error(NegativeDepositError)
      end
    end
  end

  describe "#withdraw!" do
    context "When withdrawing more than the balance" do
      it "should raise an OverdraftError" do
        expect { account.withdraw!(20) }.to raise_error(OverdraftError)
      end
    end

    context "When withdrawing less than the balance" do
      it "should change the balance" do
        account.deposit!(40)
        expect { account.withdraw!(20) }.to change(account, :balance)
      end
      it "returns the account balance" do
        account.deposit!(40)
        account.withdraw!(10).should eq 30
      end
    end

    context "When the input is negative" do
      it "interprets the input as money withdrawn" do
        account.deposit!(40)
        account.withdraw!(-10).should eq 30
      end

      it "treats the input the same way as a positive input" do
        account.deposit!(40)
        account2 = Account.new("2"*10, 40)
        account.withdraw!(-10).should eq account2.withdraw!(10)
      end
    end
  end

end
