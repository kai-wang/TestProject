trigger AccountNameMustLessThan10Trigger on Account (before insert) {
	for(Account accnt : Trigger.New) {
		if(String.length(accnt.Name) > 10) {
			System.debug(accnt.Name + ' must less than 10!');
		}
	}
}