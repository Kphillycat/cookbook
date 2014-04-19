'use strict';

recipeApp.directive('recipeView',function(){
    return function(scope, element, attrs) {
      scope.$watch('currentRecipe', function(){
        element.removeClass("hidden");
      })         
    }
  });