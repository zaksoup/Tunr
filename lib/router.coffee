Router.configure {
  layoutTemplate: 'layout'
  waitOn: ->
    [Meteor.subscribe('requests'), Meteor.subscribe ('suggestions')]
}

Router.map ->
  @route 'requestsList', {
    path: '/'
  }

  @route 'requestPage', {
    path: '/request/:_id'
    data: ->
      Requests.findOne @params._id
  }
