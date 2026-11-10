import ballerina/http;
import ballerina/log;

public function main() returns error? {
    log:printInfo("Starting");
    http:Response response = check targetServiceClient->get("");
    log:printInfo("After response", body = response);
    string responseBody = check response.getTextPayload();
    log:printInfo("Received response from target integration", body = responseBody);
}
