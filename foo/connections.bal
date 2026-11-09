import ballerina/http;

final http:Client targetServiceClient = check new (targetServiceUrl);
