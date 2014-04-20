'use strict';

recipeApp.directive('recipeDetail', function() {
    return {
        restrict: 'E',
        templateUrl: "angular/templates/recipe_detail.html"
    };
});

recipeApp.filter('fraction', function fractionFilter() {
  return function(input) {
    var f = new Fraction(parseFloat(input)); 
    return f.numerator + "/" + f.denominator;
  }
});