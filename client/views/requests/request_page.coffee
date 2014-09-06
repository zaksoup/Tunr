Template.requestPage.helpers {
  suggestions: ->
    Suggestions.find({requestId: @_id}, {sort: {points: -1}})
}