import ballerina/http;
import ballerina/log;

service / on new http:Listener(servicePort) {

    resource function get .() returns string {
        log:printInfo("Received request from calling integration");
        return "Hello from bar";
    }
}
