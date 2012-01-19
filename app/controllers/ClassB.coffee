Spine = require('spine')
ClassA = require('controllers/ClassA')

class ClassB extends Spine.Controller
  @sampleStaticVar = "sample var from Class B"
  
  constructor: ->
    console.log ClassA.sampleStaticVar
    super
    
module.exports = ClassB