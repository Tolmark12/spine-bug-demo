# Spine.js Bug

#### Bug
Spine (or is it coffescript / javascript?) has issues when two classes require each other. It appears that the class that first requires the second class can do so, however when the second attempts to require the first, it is unable to do so.

#### At A Glance:

This app prints the following to the console:

```
sample var from Class B
undefined
```


__/app/index.coffee:__

```coffeescript
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
```   


__/app/controllers/ClassA.coffee:__

```coffeescript
Spine = require('spine')
ClassB = require('controllers/ClassB')

class ClassA extends Spine.Controller
  @sampleStaticVar = "sample var from Class A"
	
  constructor: ->
    super
	console.log ClassB.sampleStaticVar
    
module.exports = ClassA

```   


__/app/controllers/ClassB.coffee:__ 

```coffeescript
Spine = require('spine')
ClassA = require('controllers/ClassA')

class ClassB extends Spine.Controller
  @sampleStaticVar = "sample var from Class B"
  
  constructor: ->
    console.log ClassA.sampleStaticVar
    super
    
module.exports = ClassB
```   
