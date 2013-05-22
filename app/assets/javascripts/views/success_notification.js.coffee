class AnchorClipper.Views.SuccessNotification extends Backbone.View
  el: '#clip_notification'

  template: _.template("<div class=\"alert alert-success hide\">Yep</div>")

  render: ->
    this.$el.empty()
    this.$el.html(this.template())
    @

  showNotify: ->
    this.$('.alert.alert-success.hide').show('clip', 100)