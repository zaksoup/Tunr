Template.suggestionForm.helpers {

}

Template.suggestionForm.events {
  'submit form': (e, template) ->
    e.preventDefault()

    $albumFields = $('div.album')
    albums = []

    for album in $albumFields
      albums.push({
        band: $(album).find('input.band').val()
        album: $(album).find('input.album').val()
      })


    suggestion = {
      albums: albums
      comments: $('textarea.comments').val()
      requestId: template.data._id
      points: 0
      liked: []
    }

    $(e.target)[0].reset()

    #console.log(suggestion)

    Meteor.call('suggestion', suggestion)

}