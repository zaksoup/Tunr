@Requests = new Meteor.Collection 'requests'
Meteor.methods {
  request: (requestParams) ->
    user = Meteor.user()

    console.log(requestParams)
    request = _.extend(_.pick(requestParams, 'genre', 'bands', 'comments', 'public'), {
      userId: user._id
      username: user.username
      date: new Date().getTime()
    })
    console.log(request)
    id = Requests.insert(request)
    Router.go('/request/'+ id)
}