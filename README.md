# Meal Time

`portfolio`

A simple Django REST API that will serve a lunch menu for the week. This API is accessed by the iOS app that is included in this repo. 

This repo is strictly for learning purposes and is not intended for production use. The iOS app is not feature filled, it's simply there to GET data from the REST API. I got this idea of wanting to understand the whole ecosystem, or at least as much as possible, that's what inspired this project. I wanted to create a REST API that could be access online then, inside an iOS app, retrieve that data and display it in a table view. Each table view cell is rendered based off of a single .xib file which allows for multiple UILabels. 

### Technology used
* Swift 5
* Python
* Django REST framework

Live API available here: https://afternoon-stream-26309.herokuapp.com and deployed on Heroku.


### Usage
* Open the XCode project and build, the app should connect to the live API.
* Must target iOS 13+
