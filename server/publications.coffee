Meteor.publish 'requests', ->
  Requests.find {}

Meteor.publish 'suggestions', ->
  Suggestions.find {}