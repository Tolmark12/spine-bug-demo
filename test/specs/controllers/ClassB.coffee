describe 'ClassB', ->
  ClassB = null
  
  beforeEach ->
    class ClassB extends Spine.Controller
  
  it 'can noop', ->
    