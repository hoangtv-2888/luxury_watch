// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.


import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "chartkick/chart.js"

require("./jquery-1.11.0.min")
require("./flexslider.js")
require("./memenu.js")
require("./jquery.easydropdown.js")
require("./custom.js")
require("jquery")
require("@nathanvda/cocoon")
require("admin-lte")
import "bootstrap/dist/css/bootstrap"
import "bootstrap/dist/js/bootstrap"
import "admin-lte/dist/css/AdminLTE.css"
import "admin-lte/dist/css/skins/_all-skins.css"
import "font-awesome/css/font-awesome.css"
global.toastr = require("toastr")
Rails.start()
Turbolinks.start()
ActiveStorage.start()

import I18n from "i18n-js"
window.I18n = I18n

require("trix")
require("@rails/actiontext")
toastr.options = {
    "closeButton": false,
    "debug": false,
    "newestOnTop": false,
    "progressBar": false,
    "positionClass": "toast-bottom-right",
    "preventDuplicates": false,
    "onclick": null,
    "showDuration": "300",
    "hideDuration": "1000",
    "timeOut": "5000",
    "extendedTimeOut": "1000",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
  }