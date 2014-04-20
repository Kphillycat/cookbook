'use strict';

var recipeControllers = angular.module('recipeControllers', []);

recipeApp.controller('RecipeListCtrl', ['$scope', '$http', 'Recipe', 'RecipeDetails',
  function($scope, $http, Recipe, RecipeDetails){
    $scope.recipes = Recipe.query();
    
    $scope.showRecipe = function(recipeId){
      $http.get("api/recipes/" + recipeId + '.json').success(function(data) {
        $scope.currentRecipe = data;
      }); 
    }

    $scope.orderProp = 'name';
  }]);