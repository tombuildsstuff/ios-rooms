var Express = require('express'),
    app     = new Express();

app.get('/rooms', function (req, res) {

  var rooms = [
    {
      name: 'Big Room',
      location: 'Second Floor'
    },
    {
      name: 'Small Room',
      location: 'Second Floor'
    },
    {
      name: 'Big Room',
      location: 'Third Floor'
    }
  ];

  res.send(rooms);
});

app.listen(3000, function () {
  console.log('Listening on port 3000');
  console.log();
  console.log('Try: \'curl http://localhost:3000/rooms\'')
});
