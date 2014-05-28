define 'templates/helpers/roundNumber', ['handlebars'], (Handlebars) ->
  Handlebars.registerHelper 'dateFormat', (context, block) ->
    format = block.hash.format || 'MMM Do, YYYY'
    moment(context).format(format)
