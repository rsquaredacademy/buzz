Shiny.addCustomMessageHandler((type = 'buzz.send'), function (message) {
  iziToast.show(message);
});

// $('#submit').on('click', function (event) {
//   event.preventDefault();

//   iziToast.show({
//     title: 'Hey',
//     message: 'What would you like to add?',
//   });
// });

// let btn = document.querySelector('#submit');
// btn.addEventListener('click', (event) => {
//   event.preventDefault();
//   iziToast.show({
//     title: 'Hey',
//     message: 'What would you like to add?',
//   });
// });
// iziToast.info({
//   id: 'info',
//   title: 'Hello',
//   message: 'Welcome!',
//   imageWidth: 70,

//   position: 'bottomLeft',
//   transitionIn: 'bounceInRight',

//   buttons: [
//     [
//       '<button><b>YES</b></button>',
//       function (instance, toast) {
//         instance.hide({ transitionOut: 'fadeOut' }, toast);
//       },
//       true,
//     ],
//     [
//       '<button>NO</button>',
//       function (instance, toast) {
//         instance.hide({ transitionOut: 'fadeOut' }, toast);
//       },
//     ],
//   ],
// });
