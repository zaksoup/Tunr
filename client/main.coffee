Meteor.subscribe 'requests'
Meteor.subscribe 'suggestions'

Accounts.ui.config {
   passwordSignupFields: 'USERNAME_ONLY'
}