<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.google.api.client.googleapis.auth.oauth2.GoogleCredential"%>
<%@ page import="com.google.api.client.http.HttpHeaders"%>
<%@ page import="com.google.api.client.http.HttpRequestInitializer"%>
<%@ page import="com.google.api.client.http.javanet.NetHttpTransport"%>
<%@ page import="com.google.api.client.json.JsonFactory"%>
<%@ page import="com.google.api.client.json.jackson2.JacksonFactory"%>
<%@ page import="com.google.api.services.jobs.v3.CloudTalentSolution"%>
<%@ page import="com.google.api.services.jobs.v3.model.Company"%>
<%@ page import="com.google.api.services.jobs.v3.model.ListCompaniesResponse"%>
<%@ page import="java.io.IOException"%>
<%@ page import="java.util.Collections"%>
<%@ page import="GetToWorkServer.GetToWork.JobServiceQuickstart"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
//package com.google.samples;
//package GetToWorkServer.GetToWork;
//import com.google.api.client.googleapis.auth.oauth2.GoogleCredential;
String d = "projects/" + System.getenv("gettowork-73510");
CloudTalentSolution t = JobServiceQuickstart.getTalentSolutionClient();

try {
    ListCompaniesResponse listCompaniesResponse = t.projects().companies().list(d).execute();
    System.out.println("Request Id is " + listCompaniesResponse.getMetadata().getRequestId());
    if (listCompaniesResponse.getCompanies() != null) {
      for (Company company : listCompaniesResponse.getCompanies()) {
        System.out.println(company.getName());
      }
    }
  } catch (IOException e) {
    System.out.println("Got exception while listing companies");
    throw e;
  }


  // [END quickstart]

%>
</body>
</html>