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

Shiny.addCustomMessageHandler((type = 'tip.send'), function (message) {
  let selector = '#' + message.id;
  let el = document.querySelector(selector);
  el.setAttribute('aria-label', message.tip);
  el.setAttribute('data-microtip-position', message.position);
  el.setAttribute('role', 'tooltip');
  console.log(message.size);
  if (message.size !== null) {
    el.setAttribute('data-microtip-size', message.size);
  }
});

Shiny.addCustomMessageHandler((type = 'notify.send'), function (message) {
  PNotify.notice(message);
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
