'use strict';

recipeApp.directive('recipeSnippet',function(){
    return function(scope, element, attr) {
      scope.$watch('currentRecipe', function(){
        // debugger;
        if (scope.showDetail){
          debugger;
          element.find("recipe-detail").removeClass("hidden");
        }
        // element.slideDown(2);
      })         
    }
  });

recipeApp.directive('recipeDetail', function() {
    return {
        restrict: 'E',
        templateUrl: "angular/templates/recipe_detail.html"
//         // controller: function($scope) {
//         //     $scope.spinning = true;
//         //     $scope.stopOrStart = function() {
//         //         $scope.spinning = !$scope.spinning;
//         //     };
//         // },
//         // templateUrl: 'gear-widget.html'
    };
});