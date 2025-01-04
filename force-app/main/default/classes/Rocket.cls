public class Rocket {
    // Properties of the Rocket
    public String name { get; set; }
    public Decimal fuelCapacity { get; set; } // Maximum fuel capacity
    public Decimal currentFuel { get; private set; } // Current fuel level
    public Boolean isLaunched { get; private set; } // Indicates if the rocket has been launched

    // Constructor
    public Rocket(String name, Decimal fuelCapacity) {
        this.name = name;
        this.fuelCapacity = fuelCapacity;
        this.currentFuel = fuelCapacity; // Start with full fuel
        this.isLaunched = false; // Rocket is initially not launched
    }

    // Method to launch the rocket
    public void launch() {
        if (isLaunched) {
            System.debug('Rocket is already launched.');
            return;
        }

        if (currentFuel <= 0) {
            System.debug('Not enough fuel to launch the rocket.');
            return;
        }

        isLaunched = true;
        System.debug(name + ' has launched successfully!');
    }

    // Method to refuel the rocket
    public void refuel(Decimal fuelAmount) {
        if (fuelAmount <= 0) {
            System.debug('Fuel amount must be greater than zero.');
            return;
        }

        currentFuel = Math.min(currentFuel + fuelAmount, fuelCapacity);
        System.debug('Rocket refueled. Current fuel level: ' + currentFuel);
    }

    // Method to land the rocket
    public void land() {
        if (!isLaunched) {
            System.debug('Rocket has not been launched yet.');
            return;
        }

        isLaunched = false;
        System.debug(name + ' has landed safely!');
    }

    // Method to consume fuel
    public void consumeFuel(Decimal amount) {
        if (amount <= 0) {
            System.debug('Fuel consumption amount must be greater than zero.');
            return;
        }

        if (currentFuel < amount) {
            System.debug('Not enough fuel to consume this amount.');
            return;
        }

        currentFuel -= amount;
        System.debug('Fuel consumed. Remaining fuel: ' + currentFuel);
    }
}