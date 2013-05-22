class AnchorClipper.Router extends Backbone.Router
  routes:
    "": "index"

  index: ->
    clipper = new AnchorClipper.Models.Clipper()

    clipForm = new AnchorClipper.Views.ClipperForm
      model: clipper

    clipperNotification = new AnchorClipper.Views.Notification()

    clipperRegion = new AnchorClipper.Views.ClipperRegion()

    clipperRegion.$el.append(clipForm.render().el)
    clipperRegion.$el.append(clipperNotification.render().el)