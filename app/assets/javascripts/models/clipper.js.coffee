class AnchorClipper.Models.Clipper extends Backbone.Model
  urlRoot : '/clippers'

  toJSON: ->

    "utf8": "&#x2713;"
    "authenticity_token": $("meta[name=csrf-token]").attr("content")
    "clipper":
        "url": this.get("address")

