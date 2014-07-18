$(function(){
  var slider = $('#slider');
  
  slider.addClass('first-image');

  var img = 1;
  slider.addClass('slider');
  var timer = setInterval(nextImage, 4000);

  function nextImage(){
    removeClasses(true);
    addClasses(img);
    ((img == 3) ? img = 1 : img++);
  }

  function removeClasses(){
    slider.removeClass('first-image');
    slider.removeClass('second-image');
    slider.removeClass('third-image');
  }

  function addClasses(i){
    switch(i){
      case 1:
        slider.addClass('first-image');
        break;
      case 2:
        slider.addClass('second-image');
        break;
      case 3:
        slider.addClass('third-image');
        break;
      default: break;
    }
  }
});
