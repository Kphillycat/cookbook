'use strict';

var recipeControllers = angular.module('recipeControllers', []);

recipeApp.controller('RecipeListCtrl', ['$scope', '$http', 'Recipe',
  function($scope, $http, Recipe){
    $http.get('api/recipes.json').success(function(data) {
      $scope.recipes = data;
    });
    
    $scope.showRecipe = function(recipeId){
      $http.get("api/recipes/" + recipeId + '.json').success(function(data) {
        $scope.currentRecipe = data;
      }); 
    }
    // $scope.recipes = Recipe.query();

    // $scope.orderProp = 'name';
  }]);