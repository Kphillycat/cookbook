'use strict';

var recipeControllers = angular.module('recipeControllers', []);

recipeApp.controller('RecipeListCtrl', ['$scope', '$http', 'Recipe',
  function($scope, $http, Recipe){
    $http.get('api/recipes.json').success(function(data) {
      $scope.recipes = data;
    });
    
    $scope.showRecipe = function(recipeId){
      $http.get("api/recipes/" + recipeId + '.json').success(function(data) {
        debugger;
        $scope.recipe = data;
        // $scope.ingredients = data[0].ingredients;
      }); 
    }
    // $scope.recipes = Recipe.query();

    // $scope.orderProp = 'name';
  }]);

recipeControllers.controller('RecipeDetailCtrl', ['$scope', '$routeParams', '$http',

    // $scope.setImage = function(imageName) {
    //   $scope.mainImg = imageName;
    // }
  // }
  ]);