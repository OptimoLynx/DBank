import D "mo:base/Debug";
import Time "mo:base/Time";
import Float "mo:base/Float";

actor DBank {
  stable var currentValue: Float = 500;
  currentValue := 100;
  D.print(debug_show(currentValue));

  stable var startTime = Time.now();
  startTime := Time.now();
  D.print(debug_show(startTime));

  let id = 234234761872;
  // D.print(debug_show (id));

  public func topUp(amount: Float) {
    currentValue += amount;
    D.print(debug_show(currentValue));
  };

  // Allow users to withdrawl an amount from the currentValue
  // Decrease the currentValue by the amount
  public func withdrawl(amount: Float) {
    let tempValue: Float = currentValue - amount;
    if (tempValue >= 0) {
      currentValue -= amount;
      D.print(debug_show(currentValue));
    } else {
      D.print("Amount too large, currentValue less than 0.");
    };
  };
  //topUp();

  public query func checkBalance(): async Float {
    return currentValue;
  };

  public func compound() {
    let currentTime = Time.now();
    let timeElapsedNS = currentTime - startTime;
    let timeElapsedS = timeElapsedNS / 1000000000;
    currentValue := currentValue * (1.01 ** Float.fromInt(timeElapsedS));
    startTime := currentTime;
  };

};
