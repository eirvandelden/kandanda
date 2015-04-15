ApplicationPage = require('../../../views/application_page')
template        = require('../templates/index')
$               = require('jquery')
bus             = require('maji').bus

class IndexPage extends ApplicationPage
  template: template

  events:
    'click .drum': 'playSound'
    'click #detail': (e) ->
      e.preventDefault()
      target = $(e.target)

      @navigate(target.attr('href'), transition: target.data('transition'))

  playSound: (e) ->
    console.log 'plugins', window.plugins
    console.log 'dinges', window.plugins.LowLatencyAudio

module.exports = IndexPage
