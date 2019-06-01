@RestResource(urlMapping = '/displayAccounts')

global class AccountRestService {    
    @HttpGet
 global static List<List<SObject>> doget() {   
   List<List<SObject>> searchList = [FIND 'SFDC' IN ALL FIELDS 
                                      RETURNING Account(Name), Contact(FirstName,LastName)];
     //List < Account > result = [Select Id, name, phone, Website from account limit 100];
       System.debug('Result' +searchList);
       return searchList;
   }
}