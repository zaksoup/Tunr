Template.requestForm.events {
  'submit form': (e, template) ->
    e.preventDefault()

    $bandFields = $('input.band')
    bands = []

    for band in $bandFields
      bands.push $(band).val()


    request = {
      genre: $('input.genre').val()
      bands: bands
      comments: $('textarea.comments').val()
      public: $('input[name=public]').prop('checked')
    }

    Meteor.call('request', request)

}