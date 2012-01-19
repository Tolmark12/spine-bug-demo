Spine = require('spine')
ClassB = require('controllers/ClassB')

class ClassA extends Spine.Controller
  @sampleStaticVar = "sample var from Class A"
	
  constructor: ->
    super
	console.log ClassB.sampleStaticVar
    
module.exports = ClassA