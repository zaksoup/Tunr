Template.requestsList.helpers {
  requests: ->
    Requests.find({public: true})
}