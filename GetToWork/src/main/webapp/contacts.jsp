<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>People API Quickstart</title>
    <meta charset="utf-8" />
  </head>
  <body>
    <p>People API Quickstart</p>
    
    <input type="button" value="Add a Contact" onclick="addContact()" />
   
   
  

    <!--Add buttons to initiate auth sequence and sign out-->
    <button id="authorize_button" style="display: none;">Authorize</button>
    <button id="signout_button" style="display: none;">Sign Out</button>

    <pre id="content" style="white-space: pre-wrap;"></pre>


<p id="test" ></p>
    <script type="text/javascript">
    
   
      // Client ID and API key from the Developer Console
      var CLIENT_ID = '838423436336-8ldgmn1cjfh1a3aumkovginh1o4rrnh5.apps.googleusercontent.com'
      var API_KEY = 'AIzaSyALN1GM84vYnZuX0_5AkxLVvXENs5ucjvs';

      // Array of API discovery doc URLs for APIs used by the quickstart
      var DISCOVERY_DOCS = ["https://www.googleapis.com/discovery/v1/apis/people/v1/rest"];

      // Authorization scopes required by the API; multiple scopes can be
      // included, separated by spaces.
      var SCOPES = "https://www.googleapis.com/auth/contacts.readonly";

      var authorizeButton = document.getElementById('authorize_button');
      var signoutButton = document.getElementById('signout_button');

      /**
       *  On load, called to load the auth2 library and API client library.
       */
      function handleClientLoad() {
        gapi.load('client:auth2', initClient);
      }

      /**
       *  Initializes the API client library and sets up sign-in state
       *  listeners.
       */
      function initClient() {
        gapi.client.init({
          apiKey: API_KEY,
          clientId: CLIENT_ID,
          discoveryDocs: DISCOVERY_DOCS,
          scope: SCOPES
        }).then(function () {
          // Listen for sign-in state changes.
          gapi.auth2.getAuthInstance().isSignedIn.listen(updateSigninStatus);

          // Handle the initial sign-in state.
          updateSigninStatus(gapi.auth2.getAuthInstance().isSignedIn.get());
          authorizeButton.onclick = handleAuthClick;
          signoutButton.onclick = handleSignoutClick;
        }, function(error) {
          appendPre(JSON.stringify(error, null, 2));
        });
      }

      /**
       *  Called when the signed in status changes, to update the UI
       *  appropriately. After a sign-in, the API is called.
       */
      function updateSigninStatus(isSignedIn) {
        if (isSignedIn) {
          authorizeButton.style.display = 'none';
          signoutButton.style.display = 'block';
          listConnectionNames();
          document.write("1");
          addContact();
        } else {
          authorizeButton.style.display = 'block';
          signoutButton.style.display = 'none';
        }
      }

      /**
       *  Sign in the user upon button click.
       */
      function handleAuthClick(event) {
        gapi.auth2.getAuthInstance().signIn();
      }

      /**
       *  Sign out the user upon button click.
       */
      function handleSignoutClick(event) {
        gapi.auth2.getAuthInstance().signOut();
      }

      /**
       * Append a pre element to the body containing the given message
       * as its text node. Used to display the results of the API call.
       *
       * @param {string} message Text to be placed in pre element.
       */
      function appendPre(message) {
        var pre = document.getElementById('content');
        var textContent = document.createTextNode(message + '\n');
        pre.appendChild(textContent);
      }

      /**
       * Print the display name if available for 10 connections.
       */
      function listConnectionNames() {
        gapi.client.people.people.connections.list({
           'resourceName': 'people/me',
           'pageSize': 10,
           'personFields': 'names,emailAddresses',
         }).then(function(response) {
           var connections = response.result.connections;
           appendPre('Connections:');

           if (connections.length > 0) {
             for (i = 0; i < connections.length; i++) {
               var person = connections[i];
               if (person.names && person.names.length > 0) {
                 appendPre(person.names[0].displayName)
               } else {
                 appendPre("No display name found for connection.");
               }
             }
           } else {
             appendPre('No connections found.');
           }
         });
      }
      
      /*
      var createData = {
    	      name        : 'Ritesh Vishwakarma',                    // Default is ''
    	      display_name: 'Ritesh Raj Vishwakarma',              // Default is ''
    	      email       : 'ritesh@gmail.com',
    	      is_primary  : true,                     // Default is true
    	      contact_type: 'other',                  // Default is other.
    	      phoneNumber: '9876543210',                  // Default is other.
    	      headers     :{
    	          'GData-Version': '3.0',
    	          'User-Agent'   : 'SomeAgent'
    	      },
    	      extended_property: [                    // Optional
    	          {name: 'custom_key_2', value: 'custom_value_2'},
    	          {name: 'custom_key_2', value: 'custom_value_2'}
    	      ]
    	  };

      gapi.client.addContact(createData, function (error,contact) {
    	  console.log(error)
    	  console.log(contact)
    	});
*/

//https://people.googleapis.com/v1/people:createContact

 function addContact(){
	 document.write("2");
gapi.client.init({

    'apiKey': 'AIzaSyALN1GM84vYnZuX0_5AkxLVvXENs5ucjvs',
    // clientId and scope are optional if auth is not required.
    'clientId': '838423436336-8ldgmn1cjfh1a3aumkovginh1o4rrnh5.apps.googleusercontent.com',
    'scope': 'https://www.googleapis.com/auth/contacts',
}).then(function () {
    // 3. Initialize and make the API request.
    document.write("3");
    return gapi.client.request({
        'method': "POST",
        'path': 'https://people.googleapis.com/v1/people:createContact',
        'datatype': 'jsonp',
        'parent': "Name the parent",
        'body': {
            "names": [
                {
                    "givenName": "Name to be given"
                }
            ],
            "emailAddresses": [
                {
                    "value": "Email_Add to be given"
                }
            ],
            "phoneNumbers": [
                {
                    "value": "phone number to be given"
                }
            ]
        }
    })

}).then(function (response) {
	document.write("4");
    console.log(response.result);
    document.getElementById("test").innerHTML = "Create New contact Please Check into google contacts";
    document.write("5");
}, function (reason) {
    console.log('Error: ' + reason.result.error.message);
    document.write(reason.result.error.message);
});

}
//};

    </script>

    <script async defer src="https://apis.google.com/js/api.js"
      onload="this.onload=function(){};handleClientLoad()"
      onreadystatechange="if (this.readyState === 'complete') this.onload()">
    </script>
  </body>
</html>