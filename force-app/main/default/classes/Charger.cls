public class Charger {

    public String type { get; set; }
    public Decimal voltage { get; set; }
    public Boolean isConnected { get; set; }

    public Charger(String type, Decimal voltage) {
        this.type = type;
        this.voltage = voltage;
        this.isConnected = false; // Initially, the charger is not connected.
    }

    public void connect() {
        this.isConnected = true;
    }

    public void disconnect() {
        this.isConnected = false;
    }

    public String getStatus() {
        if (this.isConnected) {
            return 'Charger of type ' + this.type + ' is connected. Voltage: ' + this.voltage + 'V.';
        } else {
            return 'Charger of type ' + this.type + ' is disconnected.';
        }
    }
}
