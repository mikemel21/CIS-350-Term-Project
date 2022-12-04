# Overview

This document is essentially an organizer for the requirements for our application. It lists the various aspects/screens of our app and gives
guidelines as to what each must accomplish in order to be identified as "completed". As our project development and processes continue, the requirements, functionalities, and aspects/screens are likely to expand and change.

# Software Requirements

Our requirements were created with the focus of usability and reliability for the user. We wanted something that they could use in the event of a car issue and there is no other help nearby. Our app is easy to use and straightforward for anyone to download and get an easy answer quickly. 

# Functional Requirements
 
1. Login System/Screen
    * There shall be a sign-up button if the user has never signed up.
    * The user shall create a username to use for future log in.
    * The user shall create a password to use for future log in.
    * The user shall be able to use their personal username and password to log in.
    * If the user enters the password or username wrong, there shall be a prompt displayed to notify the user that they typed their login credentials incorrectly.
    * There shall be a forgotten username or password button at the bottom for the user to reset the username or password. (maybe?)

2. Opening Screen/Further screens
    * Once logged in, the options for “smell, sight, feel, sound and if it won’t start” shall be presented upon opening the app/after logging in.
    * Once the user clicks an option, they shall get a list of "smells, sights, feels, etc." to choose from.
    * Once the user chooses an option based on the senses, they shall get a list of answers, recommendation on what to do, and the average cost for repair.
    * The solution screen shall display an option to view community comments.
    * The user shall be able to post new comments for other users to see.
     
3. Settings
    * There shall be a settings button on the opening screen/diagnosis screen.
    * There shall be a dark mode and light mode enabler in settings.
    * There shall be a "log out" button inside the settings for the user to log out.
    * 
    * There shall be an option to return to main page from Settings menu.

# Non-Functional Requirements

1. Usability
    * The app shall always be available for the user to use at any time.
    * The app shall be accommodating to those with disabilities, i.e. The font is easy to read, the layout is clear and simple, etc.
    * The transition screens shall be fast, so the user does not think their device is slow.
    * Buttons shall be appropriately labeled so there is no user confusion.
    * The application shall be simple to use and have a design that does not need instructions/guidelines to use.
    * The application shall be easy to navigate though (Swipe down screen allows for this) 
 
 2. System Requirements
    * Software shall work on every iPhone that supports iOS 16 and up.
    * The software shall run on Xcode14 and above.
    * "Firebase" shall store all usernames and passwords.
    * The app shall function for basic answers without internet connection.
    * "Pusher" shall store and save all user comments.
 
 3. Basic Background App Support:
    * Software shall take less than 5 seconds to start running.
    * App should not crash due to extended use or system bugs.
    * App can handle increased usage and more data as time progresses.
    * Users can see comments updated in real time.
    * Users comments can be monitored and deleted if they don't suit the app.
 
# Software Artifacts
- This section inclues all of the documents we have created throughout this semester to aid our efforts in completing our app. 
 
 * [Use Case Diagram](https://github.com/mikemel21/GVSU-CIS350-RedSpark/blob/master/artifacts/CIS%20350%20-%20Use%20Case%20Diagrams.drawio.pdf) 
 * [Gantt Chart](https://github.com/mikemel21/GVSU-CIS350-RedSpark/blob/76409cd12e47cae1bad952957605c301511e561e/artifacts/Gantt_Chart_RedSpark.pdf)
 * [Diagnosis Descriptions](https://github.com/mikemel21/GVSU-CIS350-RedSpark/blob/6753772b9c73250f1651c5dd8480209ec81fb7c2/artifacts/Diagnosis%20Description.pdf)
 * [App Presentation](https://github.com/mikemel21/GVSU-CIS350-RedSpark/blob/bf2621aef61bf21aefab44905442c2d3c62188da/docs/Car%20Diagnosis%20App%20Presentation.pdf)
