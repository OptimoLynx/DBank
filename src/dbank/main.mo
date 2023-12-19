import D "mo:base/Debug";

actor DBank {
  stable var currentValue : Nat = 500;
  //currentValue := 100;

  let id = 234234761872;
  // D.print(debug_show (id));

  public func topUp(amount : Nat) {
    currentValue += amount;
    D.print(debug_show (currentValue));
  };

  // Allow users to withdrawl an amount from the currentValue
  // Decrease the currentValue by the amount
  public func withdrawl(amount : Nat) {
    let tempValue : Int = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      D.print(debug_show (currentValue));
    } else {
      D.print("Amount too large, currentValue less than 0.");
    };
  };
  //topUp();

  public query func checkBalance() : async Nat {
    return currentValue;
  };

};
