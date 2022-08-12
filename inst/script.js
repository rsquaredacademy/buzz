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
  switch (message.type) {
    case 'notice':
      PNotify.notice(message);
      break;
    case 'success':
      PNotify.success(message);
      break;
    case 'info':
      PNotify.info(message);
      break;
    case 'error':
      PNotify.error(message);
      break;
    default:
      PNotify.notice(message);
  }
});
