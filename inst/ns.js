Shiny.addCustomMessageHandler((type = 'send-notice'), function (message) {
  $('#notification').on('click', function (event) {
    setTimeout(function () {
      // create the notification
      let notification = new NotificationFx({
        message: message.message,
        layout: message.layout,
        effect: message.effect,
        type: message.type,
      });

      // show the notification
      notification.show();
    }, 1200);
  });
});

// (function () {
//   var bttn = document.getElementById('notification-trigger');

//   // make sure..
//   bttn.disabled = false;

//   bttn.addEventListener('click', function () {
//     // simulate loading (for demo purposes only)
//     classie.add(bttn, 'active');
//     setTimeout(function () {
//       classie.remove(bttn, 'active');

//       // create the notification
//       var notification = new NotificationFx({
//         message:
//           "Hello there! I'm a classic notification but I have some elastic jelliness thanks",
//         layout: 'growl',
//         effect: 'jelly',
//         type: 'error', // notice, warning, error or success
//         onClose: function () {
//           bttn.disabled = false;
//         },
//       });

//       // show the notification
//       notification.show();
//     }, 1200);

//     // disable the button (for demo purposes only)
//     this.disabled = true;
//   });
// })();
