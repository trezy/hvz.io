define(['handlebars'], function(Handlebars) {
  return Handlebars.registerHelper('timeSince', function(now) {
    console.log('timeSince has run');
    return moment().from(now);
  });
});

//# sourceMappingURL=timeSince.js.map
