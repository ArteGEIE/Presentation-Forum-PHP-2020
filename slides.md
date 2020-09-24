---
title: Comment ARTE a simplifié le développement multi-plateforme à l’aide d’une API orientée front
---

<!-- .slide: data-background="./images/background-cheers.jpg" -->

## Comment ARTE a simplifié le développement multi-plateforme à l’aide d’une API orientée front

---

#### ARTE est une chaîne de télévision culturelle européenne

![ARTE en bref](images/arte-en-bref.png) <!-- .element width="100%" -->

- disponible en 6 langues
- programmes disponibles sur internet depuis 2007

---

<!-- .slide: data-background="./images/background-apple-tv-remote.jpg" -->

## Les applications d'ARTE

---

### ARTE est disponible partout (ou presque)

- sur le web (arte.tv)
- sur mobile et tablette (iOS et Android)
- sur TV connectée (HbbTV, Apple TV et Android TV)
- sur les box FAI (Free et Orange)

---

### Les particularités des plateformes

Chaque plateforme dispose de ses propres codes et contraintes

- contrôle à la souris, au doigt ou à la télécommande
- accès au réseau (fibre vs 4G)
- navigation par url ou par deeplink
- notifications push

---

### Supports différents, expérience unifiée

![ARTE partout](images/arte-multi-device.png) <!-- .element width="100%" -->

- structure d'application similaire
- même catalogue de programmes

---

<!-- .slide: data-background="./images/background-cassette.jpg" -->

## Les premières API d'ARTE

---

### Approche orientée métier (ou CRUD)

- un endpoint par type d'entité
  - vidéo
  - collection
- un même endpoint peut servir pour plusieurs cas d'utilisation

---

### Exemple : le endpoint `/videos`

Pour récupérer les vidéos les plus vues :

```javascript
https://www.arte.tv/api/videos?sort=-views
```

Pour récupérer les vidéos les plus récentes :

```javascript
https://www.arte.tv/api/videos?sort=-availabilityDate
```

---

<!-- .slide: data-background="./images/requests-breakdown.jpg" -->

---

### Problématiques de l'approche orientée métier

- beaucoup de calls API par écran
- beaucoup de paramètres par endpoint
- API complexe à utiliser
- contenu des apps front difficile à uniformiser

---

<!-- .slide: data-background="./images/background-architecture.jpg" -->

## L'API eMac

---

### Le pattern BFF

---

### Une API au service du front

structure de l'API = structure des apps front

```javasscript
[Page]
  - title
  - description
  [Zones]
    - template
    [Teasers]
      - title
      - image
      - url
      - deeplink
```

- 1 appel API suffit pour récupérer l'intégralité d'un écran
- même call pour tous les supports

---

### Et pourquoi pas GraphQL ?

---

## Comment eMac permet-il de simplifier le développement des fronts

---

## Une approche idéale ?

---

### Un travail collaboratif

- 3 développeurs du côté de Marmelab
- 2 chefs de projet du côté d'ARTE

Une équipe proche du front, orientée web mais en concertation régulière avec les équipes front mobile et TV

---

### Références

- BFFs and GraphQL, terms you should know and why - Chris BAILEY : https://www.youtube.com/watch?v=B5OdK21ZevI
- ARTE’s API strategy & architecture - Matthieu BREEN : https://www.youtube.com/watch?v=bsCOU7131lM
- 6play_API-v2-Final(1).doc - Benoit VIGUIER : https://www.youtube.com/watch?v=Y_umU8mTWho

---

## Merci de nous avoir écouté !

Des questions ?
