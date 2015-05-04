React = require 'react'
transform = require 'coffee-react-transform'


App = React.createClass({
  getInitialState: ->
    {
      text: "hello"
      clicks: 0
    }
  incrementCount: ->
    @setState {clicks: ++@state.clicks}
  resetCount: ->
    @setState {clicks: 0}
  render: -> (
    <div>
      <h1>First App</h1>
      <RouteHandler/>
      <Button clicks={@state.clicks} increment={@incrementCount}/>
      <Reset reset={@resetCount}/>
    </div>
  )
})

Button = React.createClass({
  propTypes: {
    clicks: React.propTypes.number
    onClick: React.propTypes.func
  }

  render: -> (
    <button onClick={@props.increment}>Clicked {@props.clicks} Times</button>
  )
})

Reset = React.createClass({
  propTypes: {
    onClick: React.propTypes.func
  }

  render: -> (
    <button onClick={@props.reset}>Reset</button>
  )
})

module.exports = App
