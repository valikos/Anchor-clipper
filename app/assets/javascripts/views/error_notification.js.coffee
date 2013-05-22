class AnchorClipper.Views.ErrorNotification extends Backbone.View
  el: '#clip_notification'

  template: _.template("<div class=\"alert alert-error hide\">Can't clip this link</div>")

  render: ->
    this.$el.empty()
    this.$el.html(this.template())
    @

  showNotify: ->
    this.$('.alert.alert-error.hide').show('clip', 100).delay(2000).hide('blind', 100)