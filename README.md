# Github-Action

1. Vérification du Coding Style Epitech (🎯 Coding Style)

Cette étape vérifie si le code respecte le coding style défini par Epitech.
Si des erreurs sont détectées, elles sont reportées et l'exécution de l'action sera interrompue.

2. Compilation du programme (🛠️ Build)

Cette étape vérifie que le programme compile correctement.
Si aucune erreur n'est détectée lors de la compilation, elle vérifie également la présence d'un exécutable dans le dépôt.
Si un exécutable est trouvé, l'action continue, sinon elle échoue.

3. Exécution des tests unitaires (🏆​ Unit Tests)
Enfin, cette étape exécute les tests unitaires définis dans le projet.
Un délai de 120 secondes est accordé pour l'exécution des tests, après quoi l'exécution est interrompue si les tests n'ont pas été terminés.