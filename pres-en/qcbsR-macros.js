// DO NOT EDIT THE COMMENTS BELOW //
//                                                                           //
// This template has been obtained from QCBSRworkshops/templateWorkshops     //
//                                                                           //
// The current framework will always replace local copies with               //
// one available within the QCBSRworkshops/templateWorkshops repository.     //
// This means that one must never change local qcbsR-*.css files locally.    //
//                                                                           //
// If you would like to suggest changes to the template structure (e.g. JS)  //
// add an issue or a pull request to the template repository.                //
//                                                                           //
// END OF DO NOT EDIT COMMENTS //


// Scale image (available on Remarkjs GH page)
remark.macros.scale = function (percentage) {
  var url = this;
  return '<img src="' + url + '" style="width: ' + percentage + '" />';
};

// Rubik's cube image => top right
remark.macros.cube = function () {
  var url = "images/rubicub.png";
  return '<img style="float: right; margin: -19px 0px 0px 40px; width:80px" src="' + url + '"/>';
};

// Font-awesome icons (version 4.7)
remark.macros.faic = function (size = 2) {
  var name = this;
  return '<i class="fa fa-'+ name + ' fa-'+ size + 'x" aria-hidden="true"></i>';
};

// Academicons
remark.macros.acic = function (size = 2) {
  var name = this;
  return '<i class="ai ai-'+ name + ' ai-'+ size + 'x" aria-hidden="true"></i>';
};

// toupper (see https://github.com/gnab/remark/issues/72)
remark.macros.upper = function () {
  // `this` is the value in the parenthesis, or undefined if left out
  return this.toUpperCase();
};

// Pandoc 2.9 adds attributes on both header and div. We remove the former (to
// be compatible with the behavior of Pandoc < 2.8).
document.addEventListener('DOMContentLoaded', function(e) {
  var hs = document.querySelectorAll("div.section[class*='level'] > :first-child");
  var i, h, a;
  for (i = 0; i < hs.length; i++) {
    h = hs[i];
    if (!/^h[1-6]$/i.test(h.tagName)) continue;  // it should be a header h1-h6
    a = h.attributes;
    while (a.length > 0) h.removeAttribute(a[0].name);
  }
});
