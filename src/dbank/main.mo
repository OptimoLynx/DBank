import D "mo:base/Debug";

actor DBank {
  var currentValue = 500;
  currentValue := 100;

  let id = 234234761872;
  // D.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    D.print(debug_show (currentValue));
  };

  // Allow users to withdrawl an amount from the currentValue
  // Decrease the currentValue by the amount
  public func withdrawl(amount : Nat) {
    currentValue -= amount;
    D.print(debug_show (currentValue));
  };

  //topUp();
};
