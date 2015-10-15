var $comic = $('#comic img'),
    titleText = $comic.attr('title');
var $extraText = $('<p>' + titleText + '</p>').css({
      fontFamily: 'Helvetica',
      fontVariant: 'normal',
      background: '#96A8C8',
      width: '80%',
      margin: '0 auto',
      color: '#333',
      padding: '.5em 1em',
      boxSizing: 'border-box'
    });

$extraText.insertAfter($comic);
