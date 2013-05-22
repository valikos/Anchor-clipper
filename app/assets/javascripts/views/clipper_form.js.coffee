class AnchorClipper.Views.ClipperForm extends Backbone.View
  className: "input-append"

  template: _.template("<form accept-charset='UTF-8' class='new_clipper' id='new_clipper'>\
    <input class='input-xlarge' id='clipper_url' name='url' size='30' type='text'>\
    <input class='btn btn-inverse' name='commit' type='submit' value='Clip'>\
    </form>")

  events:
    "submit": "submit"

  render: ->
    params =
      'csrf-token': -> $("meta[name=csrf-token]").attr("content")

    this.$el.html(this.template(params))
    @

  submit: (e) ->
    e.preventDefault()

    this.model.save {"address": this.$("input[name=url]").val()},
      wait: true
      success: ->
        notify = new AnchorClipper.Views.SuccessNotification
        notify.render()
        notify.showNotify()
        this.model.clear()
      error: (model, xhr, options) ->
        notify = new AnchorClipper.Views.ErrorNotification
        notify.render()
        notify.showNotify()