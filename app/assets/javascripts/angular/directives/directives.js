'use strict';

recipeApp.directive('recipeView',function(){
    return function(scope, element, attrs) {
      scope.$watch('currentRecipe', function(){
        debugger;
        element.addClass("hidden");
        element.slideDown(2);
      })         
    }
  });