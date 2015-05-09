TodoModel    = require '../../app/modules/todo/models/todo_model'

describe 'TodoModel', ->
  beforeEach ->
    @todo = new TodoModel { title: 'test' }

  context '.toggle', ->
    it 'toggles the completed value', ->
      expect(@todo.get('completed')).to.be.false
      @todo.toggle()
      expect(@todo.get('completed')).to.be.true
      @todo.toggle()
      expect(@todo.get('completed')).to.be.false

  context '.storePhoto', ->
    it 'sets the photoPath value', ->
      expect(@todo.get('photoPath')).to.be.undefined
      @todo.storePhoto 'url'
      expect(@todo.get('photoPath')).to.eq 'url'

  context '.photoSrc', ->
    context 'no photoPath', ->
      it 'returns null', ->
        expect(@todo.photoSrc()).to.be.undefined

    context 'with a valid photoPath', ->
      beforeEach ->
        @todo.set 'photoPath', 'url'

      it 'returns the photoPath', ->
        stub = sinon.stub @todo, 'get'
        @todo.photoSrc()
        expect(stub).to.have.been.calledWith 'photoPath'