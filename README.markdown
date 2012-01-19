# Spine.js Bug

#### Bug
Spine (or is it coffescript / javascript?) has issues when two classes require each other. 

#### The code at a glance:

The app prints the following to the console:
```
sample var from Class B
undefined
```

______________________ /app/index.coffee:

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

______________________ /app/controllers/ClassA.coffee:

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
______________________ /app/controllers/ClassB.coffee::

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
