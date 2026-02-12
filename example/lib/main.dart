import 'package:apron_illustrations/apron_illustrations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'apron_illustrations Example',
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              spacing: 8.0,
              children: [
                Text(
                  'Apron Illustrations Example',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 16.0),
                ApronSituationThinkingTrain(
                  // width: 130.56,
                ),
                ApronSituationThinkingTrain(
                  // width: 130.56,
                  child: ApronStaticIllustration(
                    data: ApronStaticIllustrationData.foodHamburgersteak,
                  ),
                ),
                ApronSituationThinkingTrain(
                  width: 300,
                  child: ApronStaticIllustration(
                    data: ApronStaticIllustrationData.foodHamburgersteak,
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  spacing: 10.0,
                  children: [
                    ApronSituationThinkingTrain(
                      width: 200,
                    ),
                    ApronSituationDeliveryHomeEntrance(
                      width: 200,
                    ),
                    ApronSituationPickupFront(
                      width: 200,
                    ),
                    ApronSituationPickupSide(
                      width: 200,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ApronFarmerPerson(
                  faceExpression: ApronFarmerFaceExpression.smile,
                  bodyColor: ApronFarmerBodyColor.mint,
                  bodyPose: ApronFarmerBodyPose.turnip,
                ),
                const SizedBox(height: 16.0),
                ...ApronFarmerBodyPose.values.map(
                  (pose) => Row(
                    children: [
                      ...ApronFarmerBodyColor.values.map(
                        (color) => ApronFarmerBody(
                          color: color,
                          pose: pose,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronFarmerFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ApronFarmerFace(
                        expression: expression,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ApronFishStorePerson(
                  faceExpression: ApronFishStoreFaceExpression.surprised,
                  bodyColor: ApronFishStoreBodyColor.yellow,
                  bodyPose: ApronFishStoreBodyPose.fishA,
                ),
                ApronFishStorePerson(
                  faceExpression:
                      ApronFishStoreFaceExpression.smileNonHachimaki,
                  bodyColor: ApronFishStoreBodyColor.blue,
                  bodyPose: ApronFishStoreBodyPose.fishB,
                ),
                const SizedBox(height: 16.0),
                ...ApronFishStoreFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ApronFishStoreFace(
                        expression: expression,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ApronDairyFarmerPerson(
                  faceExpression: ApronDairyFarmerFaceExpression.smile,
                  bodyColor: ApronDairyFarmerBodyColor.pink,
                ),
                const SizedBox(height: 16.0),
                ...ApronDairyFarmerBodyColor.values.map(
                  (color) => Row(
                    children: [
                      ApronDairyFarmerBody(
                        color: color,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronDairyFarmerFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ApronDairyFarmerFace(
                        expression: expression,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ApronBakeryPerson(
                  faceExpression: ApronBakeryFaceExpression.smile,
                  bodyColor: ApronBakeryBodyColor.gray,
                ),
                const SizedBox(height: 16.0),
                ...ApronBakeryBodyColor.values.map(
                  (color) => Row(
                    children: [
                      ApronBakeryBody(
                        color: color,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronBakeryFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ApronBakeryFace(
                        expression: expression,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  spacing: 16.0,
                  children: [
                    ApronBoyPerson(
                      faceExpression: ApronBoyFaceExpression.default_,
                      bodyPose: ApronBoyBodyPose.normalA,
                    ),
                    ApronBoyPerson(
                      faceExpression: ApronBoyFaceExpression.facedown,
                      bodyPose: ApronBoyBodyPose.breakTheEgg,
                    ),
                    ApronBoyPerson(
                      faceExpression: ApronBoyFaceExpression.tilt,
                      bodyPose: ApronBoyBodyPose.breakTheEgg,
                    ),
                    ApronBoyPerson(
                      faceExpression: ApronBoyFaceExpression.talk,
                      bodyPose: ApronBoyBodyPose.apron,
                    ),
                    ApronBoyPerson(
                      faceExpression: ApronBoyFaceExpression.smile,
                      bodyPose: ApronBoyBodyPose.apron,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ...ApronBoyBodyPose.values.map(
                  (pose) => Row(
                    children: [
                      ApronBoyBody(
                        pose: pose,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronBoyFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ApronBoyFace(
                        expression: expression,
                        height: 100,
                        width: 100,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  spacing: 16.0,
                  children: [
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.a,
                      faceExpression: ApronMaleFaceExpression.default_,
                      bodyType: ApronMaleBodyType.green,
                      bodyPose: ApronMaleBodyPose.cutting,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.a,
                      faceExpression: ApronMaleFaceExpression.default_,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.normalA,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.a,
                      faceExpression: ApronMaleFaceExpression.sad,
                      bodyType: ApronMaleBodyType.green,
                      bodyPose: ApronMaleBodyPose.armsFolded,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.a,
                      faceExpression: ApronMaleFaceExpression.question,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.cooking,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.a,
                      faceExpression: ApronMaleFaceExpression.tilt,
                      bodyType: ApronMaleBodyType.green,
                      bodyPose: ApronMaleBodyPose.photoDiagonal,
                    ),
                  ],
                ),
                Row(
                  spacing: 16.0,
                  children: [
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.c,
                      faceExpression: ApronMaleFaceExpression.default_,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.normalB,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.c,
                      faceExpression: ApronMaleFaceExpression.question,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.thinking,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.c,
                      faceExpression: ApronMaleFaceExpression.facedown,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.cutting,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.c,
                      faceExpression: ApronMaleFaceExpression.sad,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.armsFolded,
                    ),
                    ApronMalePerson(
                      faceType: ApronMaleFaceType.c,
                      faceExpression: ApronMaleFaceExpression.facedown,
                      bodyType: ApronMaleBodyType.mint,
                      bodyPose: ApronMaleBodyPose.photoFront,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ...ApronMaleBodyPose.values.map(
                  (pose) => Row(
                    children: [
                      ...ApronMaleBodyType.values.map(
                        (type) => ApronMaleBody(
                          type: type,
                          pose: pose,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronMaleFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ...ApronMaleFaceType.values.map(
                        (type) => ApronMaleFace(
                          type: type,
                          expression: expression,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  spacing: 16.0,
                  children: [
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.b,
                      faceExpression: ApronFemaleFaceExpression.facedown,
                      bodyType: ApronFemaleBodyType.yellow,
                      bodyPose: ApronFemaleBodyPose.cookingA,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.a,
                      faceExpression: ApronFemaleFaceExpression.facedown,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.photoFront,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.b,
                      faceExpression: ApronFemaleFaceExpression.question,
                      bodyType: ApronFemaleBodyType.yellow,
                      bodyPose: ApronFemaleBodyPose.thinking,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.a,
                      faceExpression: ApronFemaleFaceExpression.smile,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.normalApron,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.b,
                      faceExpression: ApronFemaleFaceExpression.default_,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.photoDiagonal,
                    ),
                  ],
                ),
                Row(
                  spacing: 16.0,
                  children: [
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.c,
                      faceExpression: ApronFemaleFaceExpression.default_,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.normalA,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.c,
                      faceExpression: ApronFemaleFaceExpression.smile,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.smartphone,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.c,
                      faceExpression: ApronFemaleFaceExpression.tilt,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.cookingB,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.c,
                      faceExpression: ApronFemaleFaceExpression.tilt,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.photoDiagonal,
                    ),
                    ApronFemalePerson(
                      faceType: ApronFemaleFaceType.c,
                      faceExpression: ApronFemaleFaceExpression.question,
                      bodyType: ApronFemaleBodyType.blue,
                      bodyPose: ApronFemaleBodyPose.thinking,
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                ...ApronFemaleBodyPose.values.map(
                  (pose) => Row(
                    children: [
                      ...ApronFemaleBodyType.values.map(
                        (type) => ApronFemaleBody(
                          type: type,
                          pose: pose,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronFemaleFaceExpression.values.map(
                  (expression) => Row(
                    children: [
                      ...ApronFemaleFaceType.values.map(
                        (type) => ApronFemaleFace(
                          type: type,
                          expression: expression,
                          height: 100,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                ...ApronStaticIllustrationData.values.map(
                  (data) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ApronStaticIllustration(
                        data: data,
                        width: 100,
                        height: 100,
                      ),
                      Text(data.toString()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
