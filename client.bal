import ballerina/http;
import ballerina/io;
type student record {
   string username="";;
   string lastname = "";
   string firstname= ""
    
};
service http:Service /call on new http:Listener(9090) {
   resource function get student()  returns json{
       @http:Payload{mediaType: "application/json+id"} json{
           return{ student: ["john, gift"]};
       }
       
   }  
}
