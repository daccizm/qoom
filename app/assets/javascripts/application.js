// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .
$(document).ready( function() {

  var comments = new CommentCollection();
  var commentView = new CommentView({ model: comments });
  commentView.width = $("#comment_view").width();
  commentView.height = 300;
  commentView.$el.appendTo($('#comment_view'));

  $("#comment_button").click(function(){
    $("[name^='comment_text']").each(function(){
      self = $(this);
      var comment = new Comment({ text: self.val(), font_size: "big", font_color: "seagreen" });
      // var comment = new Comment({ text: self.val(), font_size: "big", font_color: "white" });
      comments.add(comment);
      setTimeout(function(){
      },500);
    });
  });
  commentView.play();

	setInterval( function() {
      $('#a_questions_list').click();
      $('#comment_button').click();
	}, 10000);

});

jQuery(function($){
  // -------------------------------------------------------------
  //   Effects
  // -------------------------------------------------------------
  (function () {
    var $frame = $('#effects');
    var $wrap  = $frame.parent();

    // Call Sly on frame
    $frame.sly({
      horizontal: 1,
      itemNav: 'forceCentered',
      smart: 1,
      activateMiddle: 1,
      activateOn: 'click',
      mouseDragging: 1,
      touchDragging: 1,
      releaseSwing: 1,
      startAt: 0,
      scrollBar: $wrap.find('.scrollbar'),
      scrollBy: 1,
      speed: 300,
      elasticBounds: 1,
      easing: 'swing',
      dragHandle: 1,
      dynamicHandle: 1,
      clickBar: 1,

      // Buttons
      prev: $wrap.find('.prev'),
      next: $wrap.find('.next')
    });
  }());
});