window.$     = window.jQuery = require('jquery');
var WebFont  = require('webfontloader');

/*--
  Exotic webfont loading
--*/

WebFont.load({
  google: {
    families: [ '' ]
  },
  timeout: 2000//,

  // fontactive: function (fontFamily, fontDescription) {
  //   console.log('webfontloader:success: ' + fontFamily);
  // },
  // fontinactive: function (fontFamily, fontDescription) {
  //   console.log('webfontloader:error: ' + fontFamily);
  // }
});


/* --
  app
--*/

$(function() {

});
