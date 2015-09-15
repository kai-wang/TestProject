trigger AccountAddressTrigger on Account (before insert, before update) {
    if(Trigger.isInsert || Trigger.isUpdate) {
        if(Trigger.isBefore) {
            for(Account accnt : Trigger.New) {
                if(accnt.BillingPostalCode != null && Boolean.valueOf(accnt.Match_Billing_Address__c)) {
                	accnt.ShippingPostalCode = accnt.BillingPostalCode;
            	}
            }
        }
    }
}