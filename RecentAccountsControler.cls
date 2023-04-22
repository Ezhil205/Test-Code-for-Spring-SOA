public with sharing class RecentAccountsControler {
    @AuraEnabled
    public static List<Account> getRecentAccounts() {
        return [SELECT Name, Industry, Type, CreatedDate FROM Account ORDER BY CreatedDate DESC LIMIT 10];
    }
}