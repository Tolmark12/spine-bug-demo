describe 'ClassA', ->
  ClassA = null
  
  beforeEach ->
    class ClassA extends Spine.Controller
  
  it 'can noop', ->
    