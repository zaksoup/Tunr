@Suggestions = new Meteor.Collection 'suggestions'
Meteor.methods {
  suggestion: (suggestionParams) ->
    user = Meteor.user()

    #console.log(suggestionParams)
    suggestion = _.extend(_.pick(suggestionParams, 'albums', 'comments', 'requestId', 'points', 'liked'), {
      userId: user._id
      username: user.username
      date: new Date().getTime()
    })
    console.log(suggestion)
    console.log(Suggestions.insert(suggestion))

  upvote: (id) ->
    user = Meteor.user()
    console.log("upvoting")

    suggestion = Suggestions.findOne({_id: id})
    params = {
      liked: suggestion.liked
      points: suggestion.points
    }


    if user._id not in suggestion.liked
      params.liked.push(user._id)
      params.points += 1
      console.log params
      Suggestions.update id, {$set: params}, (error) ->
        if error
          console.log(error)

    console.log params
    
    return

}