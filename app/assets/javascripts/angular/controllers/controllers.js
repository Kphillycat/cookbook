'use strict';

var recipeControllers = angular.module('recipeControllers', []);

recipeApp.controller('RecipeListCtrl', ['$scope', 'Recipe',
  function($scope, Recipe){
    $http.get('http://localhost:3000/recipes.json').success(function(data) {
     $scope.recipes = data;
    });
 
    // $scope.recipes = Recipe.query();

    // $scope.orderProp = 'name';
  }]);

recipeControllers.controller('RecipeDetailCtrl', ['$scope', '$routeParams', '$http',
  function($scope, $routeParams, $http) {
    $http.get("recipes/recipes-" + $routeParams.recipeId + '.json').success(function(data) {
      $scope.recipe = data[0];
      // $scope.ingredients = data[0].ingredients;
    });

    // $scope.setImage = function(imageName) {
    //   $scope.mainImg = imageName;
    // }
  }]);