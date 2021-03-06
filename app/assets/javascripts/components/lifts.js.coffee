@Lifts = React.createClass
  getInitialState: ->
    lifts: @props.data
  getDefaultsProps: ->
    lifts: []
  addLift: (lift) ->
    lifts = @state.lifts.slice()
    lifts.push lift
    @setState lifts: lifts
  render: ->
    React.DOM.div
      className: 'lifts'
      React.DOM.h1
        className: 'title'
        'Lifts'
      React.createElement LiftForm, handleNewLift: @addLift
      React.DOM.table
        className: 'table table-bordered'
        React.DOM.thead null,
          React.DOM.th null, 'Date'
          React.DOM.th null, 'Lift Name'
          React.DOM.th null, 'Wieght Lifted'
          React.DOM.th null, 'Reps Performed'
          React.DOM.th null, '1 RM'
        React.DOM.tbody null,
          for lift in @state.lifts
            React.createElement Lift, key: Lift.id, lift: lift
