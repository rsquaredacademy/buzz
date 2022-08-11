Shiny.addCustomMessageHandler((type = 'toast.send'), function (message) {
  switch (message.type) {
    case 'info':
      iziToast.info(message);
      break;
    case 'success':
      iziToast.success(message);
      break;
    case 'warning':
      iziToast.warning(message);
      break;
    case 'error':
      iziToast.error(message);
      break;
    default:
      iziToast.show(message);
  }
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
