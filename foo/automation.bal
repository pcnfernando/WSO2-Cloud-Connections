import ballerina/http;
import ballerina/log;

public function main() returns error? {
    http:Response response = check targetServiceClient->get("");

    string responseBody = check response.getTextPayload();
    log:printInfo("Received response from target integration", body = responseBody);
}
