Spine = require('spine')
require('lib/setup')
ClassA = require('controllers/ClassA')
ClassB = require('controllers/ClassB')


class App extends Spine.Controller
  constructor: ->
    super
    classa = new ClassA()
    classb = new ClassB()
    

module.exports = App
    