define ['handlebars'], (Handlebars) ->
  Handlebars.registerHelper 'timeSince', (now) ->
    console.log 'timeSince has run'
    moment().from now
