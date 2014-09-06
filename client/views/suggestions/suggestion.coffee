Template.suggestion.events {
  'click a.like': (e, template) ->
    Meteor.call('upvote', $(e.target).data('id'))

}