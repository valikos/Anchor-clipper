class AnchorClipper.Models.Url extends Backbone.Model
  available: (address) ->
    console.log "#{address} 123"
    $.ajax
      type: "GET"
      url: address
      success: ->
        console.log "available"
      error: ->
        console.log "error"
