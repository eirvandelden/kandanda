Marionette = require 'backbone.marionette'
Person     = require '../models/person_model'
template   = require '../templates/person_itemview'

class PersonItemView extends Marionette.ItemView
  template: template
  model: Person

  modelEvents:
    'change': 'render' #this event handler listens to the change event of it's model
                       #  and calls render() when it changes

module.exports = PersonItemView
