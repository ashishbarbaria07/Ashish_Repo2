trigger PlayerStatsTrigger on Player_Stats__c (before insert, before update) {
    for (Player_Stats__c player : Trigger.new) {
        // Validate Runs_Scored__c: Ensure it's not negative
        if (player.Runs_Scored__c != null && player.Runs_Scored__c < 0) {
            player.addError('Runs Scored cannot be negative.');
        }

        // Log Player Role
        if (player.Player_Role__c != null) {
            switch on player.Player_Role__c {
                when 'Batsman' {
                    System.debug('Player Role: Batsman');
                }
                when 'Bowler' {
                    System.debug('Player Role: Bowler');
                }
                when 'All-Rounder' {
                    System.debug('Player Role: All-Rounder');
                }
                when 'Wicketkeeper-Batsman' {
                    System.debug('Player Role: Wicketkeeper-Batsman');
                }
                when else {
                    System.debug('Unknown or invalid role.');
                }
            }
        }
    }
}