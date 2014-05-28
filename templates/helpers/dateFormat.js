define('templates/helpers/roundNumber', ['handlebars'], function(Handlebars) {
  return Handlebars.registerHelper('dateFormat', function(context, block) {
    var format;
    format = block.hash.format || 'MMM Do, YYYY';
    return moment(context).format(format);
  });
});

//# sourceMappingURL=dateFormat.js.map
