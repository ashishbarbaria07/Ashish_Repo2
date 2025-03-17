public class Torch {

    public Boolean isOn { get; set; }

    public Torch() {
        isOn = false; // Initially, the torch is off.
    }

    public void turnOn() {
        isOn = true;
    }

    public void turnOff() {
        isOn = false;
    }

    public Boolean checkStatus() {
        return isOn;
    }
}