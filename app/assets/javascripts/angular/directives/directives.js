'use strict';

recipeApp.directive('recipeSnippet',function(){
    return function(scope, element, attrs) {
      scope.$watch('currentRecipe', function(attrs){
        // debugger;
        if (scope.showDetail){
          // debugger;
          element.find("recipe-detail").slideDown(2);
 //          element.find("recipe-detail").removeClass("hidden").wrapInner('<div style="display: none;" />')
 // .parent().find('td > div').slideDown(2);
        }
        // element.slideDown(2);
      })         
    }
  });

recipeApp.directive('recipeDetail', function() {
    return {
        restrict: 'E',
        templateUrl: "angular/templates/recipe_detail.html"
    };
});