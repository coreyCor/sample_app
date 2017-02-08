
$(document).on('turbolinks:load', function(){
    $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' });
    $('.rated').raty({ path: '/assets',
      readOnly: true,
      hints: ['bad', 'poor', 'regular', 'good', 'gorgeous'],
      score: function() {
        return $(this).attr('data-score');
      }
    });
});