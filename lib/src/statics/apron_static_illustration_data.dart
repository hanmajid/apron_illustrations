// Copyright 2026 hanmajid (Muhammad Farhan Majid)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

enum ApronStaticIllustrationData {
  // 01_Food
  foodHamburgersteak,
  foodChickenPikata,
  foodBirchchicken,
  foodFriedeggs,
  foodMeatcroquette,
  foodTofu,
  foodStirFryA,
  foodStirFryB,
  foodStirFryC,
  foodRoastChicken,
  foodOkonomiyaki,
  foodPotatoSalad,
  food3ColorsRice,
  foodOmeletRice,
  foodKhaoManGai,
  foodCookedRice,
  foodCurry,
  foodCreamStewA,
  foodCreamStewB,
  foodCupSoupB,
  foodHotPotA,
  foodHotPotB,
  foodMisoSoup,
  foodBuckwheatnoodles,
  foodRamen,
  foodSpaghettiA,
  foodSpaghettiB,
  foodStrawberryCakeB,
  foodDecoratedCakeA,
  foodDecoratedCakeB,
  foodCoffee,
  // 02_Ingredient
  ingredientFish,
  ingredientSteakMeat,
  ingredientSausage,
  ingredientBroccoli,
  ingredientCarrot,
  ingredientLemon;

  bool get isSvg {
    switch (this) {
      case ApronStaticIllustrationData.foodHamburgersteak:
      case ApronStaticIllustrationData.foodChickenPikata:
      case ApronStaticIllustrationData.foodBirchchicken:
      case ApronStaticIllustrationData.foodFriedeggs:
      case ApronStaticIllustrationData.foodMeatcroquette:
      case ApronStaticIllustrationData.foodTofu:
      case ApronStaticIllustrationData.foodStirFryA:
      case ApronStaticIllustrationData.foodStirFryB:
      case ApronStaticIllustrationData.foodStirFryC:
      case ApronStaticIllustrationData.foodRoastChicken:
      case ApronStaticIllustrationData.foodOkonomiyaki:
      case ApronStaticIllustrationData.foodPotatoSalad:
      case ApronStaticIllustrationData.food3ColorsRice:
      case ApronStaticIllustrationData.foodOmeletRice:
      case ApronStaticIllustrationData.foodKhaoManGai:
      case ApronStaticIllustrationData.foodCookedRice:
      case ApronStaticIllustrationData.foodCurry:
      case ApronStaticIllustrationData.foodCreamStewA:
      case ApronStaticIllustrationData.foodCreamStewB:
      case ApronStaticIllustrationData.foodCupSoupB:
      case ApronStaticIllustrationData.foodHotPotA:
      case ApronStaticIllustrationData.foodHotPotB:
      case ApronStaticIllustrationData.foodMisoSoup:
      case ApronStaticIllustrationData.foodBuckwheatnoodles:
      case ApronStaticIllustrationData.foodRamen:
      case ApronStaticIllustrationData.foodSpaghettiA:
      case ApronStaticIllustrationData.foodSpaghettiB:
      case ApronStaticIllustrationData.ingredientFish:
      case ApronStaticIllustrationData.foodStrawberryCakeB:
      case ApronStaticIllustrationData.foodDecoratedCakeA:
      case ApronStaticIllustrationData.foodDecoratedCakeB:
      case ApronStaticIllustrationData.foodCoffee:
      case ApronStaticIllustrationData.ingredientSteakMeat:
      case ApronStaticIllustrationData.ingredientSausage:
      case ApronStaticIllustrationData.ingredientBroccoli:
      case ApronStaticIllustrationData.ingredientCarrot:
      case ApronStaticIllustrationData.ingredientLemon:
        return false;
    }
  }

  String get assetName {
    switch (this) {
      case ApronStaticIllustrationData.foodHamburgersteak:
        return 'assets/01_Food/Hamburgersteak.png';
      case ApronStaticIllustrationData.foodChickenPikata:
        return 'assets/01_Food/ChickenPikata.png';
      case ApronStaticIllustrationData.foodBirchchicken:
        return 'assets/01_Food/Birchchicken.png';
      case ApronStaticIllustrationData.foodFriedeggs:
        return 'assets/01_Food/Friedeggs.png';
      case ApronStaticIllustrationData.foodMeatcroquette:
        return 'assets/01_Food/Meatcroquette.png';
      case ApronStaticIllustrationData.foodTofu:
        return 'assets/01_Food/Tofu.png';
      case ApronStaticIllustrationData.foodStirFryA:
        return 'assets/01_Food/StirFryA.png';
      case ApronStaticIllustrationData.foodStirFryB:
        return 'assets/01_Food/StirFryB.png';
      case ApronStaticIllustrationData.foodStirFryC:
        return 'assets/01_Food/StirFryC.png';
      case ApronStaticIllustrationData.foodRoastChicken:
        return 'assets/01_Food/RoastChicken.png';
      case ApronStaticIllustrationData.foodOkonomiyaki:
        return 'assets/01_Food/Okonomiyaki.png';
      case ApronStaticIllustrationData.foodPotatoSalad:
        return 'assets/01_Food/PotatoSalad.png';
      case ApronStaticIllustrationData.food3ColorsRice:
        return 'assets/01_Food/3ColorsRice.png';
      case ApronStaticIllustrationData.foodOmeletRice:
        return 'assets/01_Food/OmeletRice.png';
      case ApronStaticIllustrationData.foodKhaoManGai:
        return 'assets/01_Food/KhaoManGai.png';
      case ApronStaticIllustrationData.foodCookedRice:
        return 'assets/01_Food/CookedRice.png';
      case ApronStaticIllustrationData.foodCurry:
        return 'assets/01_Food/Curry.png';
      case ApronStaticIllustrationData.foodCreamStewA:
        return 'assets/01_Food/CreamStewA.png';
      case ApronStaticIllustrationData.foodCreamStewB:
        return 'assets/01_Food/CreamStewB.png';
      case ApronStaticIllustrationData.foodCupSoupB:
        return 'assets/01_Food/CupSoupB.png';
      case ApronStaticIllustrationData.foodHotPotA:
        return 'assets/01_Food/HotPotA.png';
      case ApronStaticIllustrationData.foodHotPotB:
        return 'assets/01_Food/HotPotB.png';
      case ApronStaticIllustrationData.foodMisoSoup:
        return 'assets/01_Food/MisoSoup.png';
      case ApronStaticIllustrationData.foodBuckwheatnoodles:
        return 'assets/01_Food/Buckwheatnoodles.png';
      case ApronStaticIllustrationData.foodRamen:
        return 'assets/01_Food/Ramen.png';
      case ApronStaticIllustrationData.foodSpaghettiA:
        return 'assets/01_Food/SpaghettiA.png';
      case ApronStaticIllustrationData.foodSpaghettiB:
        return 'assets/01_Food/SpaghettiB.png';
      case ApronStaticIllustrationData.foodStrawberryCakeB:
        return 'assets/01_Food/StrawberryCakeB.png';
      case ApronStaticIllustrationData.foodDecoratedCakeA:
        return 'assets/01_Food/DecoratedCakeA.png';
      case ApronStaticIllustrationData.foodDecoratedCakeB:
        return 'assets/01_Food/DecoratedCakeB.png';
      case ApronStaticIllustrationData.foodCoffee:
        return 'assets/01_Food/Coffee.png';
      case ApronStaticIllustrationData.ingredientFish:
        return 'assets/02_Ingredient/Fish.png';
      case ApronStaticIllustrationData.ingredientSteakMeat:
        return 'assets/02_Ingredient/SteakMeat.png';
      case ApronStaticIllustrationData.ingredientSausage:
        return 'assets/02_Ingredient/Sausage.png';
      case ApronStaticIllustrationData.ingredientBroccoli:
        return 'assets/02_Ingredient/Broccoli.png';
      case ApronStaticIllustrationData.ingredientCarrot:
        return 'assets/02_Ingredient/Carrot.png';
      case ApronStaticIllustrationData.ingredientLemon:
        return 'assets/02_Ingredient/Lemon.png';
    }
  }
}
