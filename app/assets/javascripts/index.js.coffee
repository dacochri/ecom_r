$(function(){
  var slider = $('#slider');
  var firstTitle = $('#slider-title li:nth-child(1)');
  var secondTitle = $('#slider-title li:nth-child(2)');
  var thirdTitle = $('#slider-title li:nth-child(3)');
  
  slider.addClass('first-image');
  firstTitle.addClass('highlight');
  firstTitle.addClass('left-arrow');

  var img = 1;
  slider.addClass('slider');
  var timer = setInterval(nextImage, 4000);

  $('#slider-title li').on('click', function(){
    clearInterval(timer);
    var desiredSelection = $(this).index() + 1;
    removeClasses(false);
    addClasses(desiredSelection);
    img = desiredSelection;
    timer = setInterval(nextImage, 4000);
  });

  function nextImage(){
    removeClasses(true);
    addClasses(img);
    ((img == 3) ? img = 1 : img++);
  }

  function removeClasses(){
    slider.removeClass('first-image');
    firstTitle.removeClass('highlight');
    firstTitle.removeClass('left-arrow');
    
    slider.removeClass('second-image');
    secondTitle.removeClass('highlight');
    secondTitle.removeClass('left-arrow');

    slider.removeClass('third-image');
    thirdTitle.removeClass('highlight');
    thirdTitle.removeClass('left-arrow');
  }

  function addClasses(i){
    switch(i){
      case 1:
        slider.addClass('first-image');
        firstTitle.addClass('highlight');
        firstTitle.addClass('left-arrow');
        break;
      case 2:
        slider.addClass('second-image');
        secondTitle.addClass('highlight');
        secondTitle.addClass('left-arrow');
        break;
      case 3:
        slider.addClass('third-image');
        thirdTitle.addClass('highlight');
        thirdTitle.addClass('left-arrow');
        break;
      default: break;
    }
  }
});
