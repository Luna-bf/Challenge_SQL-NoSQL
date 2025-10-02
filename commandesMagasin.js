// 1. Création des données (CREATE)

// use commandesMagasin

db.commandes.insertMany([
    {
        nom_client: "John Doe",
        date_commande: ISODate("2024-09-25"),
        status: "livrée",
        articles: [
            { "nom_produit": "Souris sans fil", "quantite": 1 }
        ]
    },
    {
        nom_client: "Lisa Williams",
        date_commande: ISODate("2025-09-30"),
        status: "en cours",
        articles: [
            { "nom_produit": "Cadre en bois", "quantite": 3 }
        ]
    },
    {
        nom_client: "Michael Smith",
        date_commande: ISODate("2025-10-02"),
        status: "en cours",
        articles: [
            { "nom_produit": "Ventilateur", "quantite": 1 }
        ]
    }
]);


// 2. Mise à jour des données (UPDATE)
db.commandes.updateMany({ status: "en cours" }, { $set: { status: "en_cours" } });


// 3. Lecture (READ)
// Écrivez et exécutez la requête MongoDB pour afficher toutes les commandes ayant le statut "en cours"
db.commandes.find({ status: "en_cours" });

// Écrivez et exécutez la requête MongoDB pour trouver toutes les commandes passées par un nom_client spécifique (choisissez l'un des clients que vous avez insérés)
db.commandes.find({ nom_client: "John Doe" });