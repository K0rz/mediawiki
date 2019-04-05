# Mediawiki

Déploiement de l'application Mediaiwiki sur Centos avec Ansible.

## Ligne de commande
*Déploiement d'Apache.*
```bash
ansible-playbook --user deploy -b -i wiki.inv install-apache.yml
```
*Autoriser connection http*
```bash
ansible-playbook --user deploy -b -i wiki.inv install-firewall.yml
```

_Déploiement de Mariadb._
```bash
ansible-playbook --user deploy -b -i wiki.inv install-mariadb.yml
```

*Déploiement de Mediawiki (Apache + Firewall + Mariadb + Configuration).*
```bash
ansible-playbook --user root --ask-pass -b -i wiki.inv install-all.yml
```
## Liste des tâches
- [x] Initialisation du structure du projet.
- [x] Installation d'Apache + PHP (Mise à jour).
- [x] Installation et configuration du Firewall.
- [x] Installation de MariaDB.
- [x] Installation de MediaWiki (+ configuration).
- [x] \(Optionel) Ajout de l'utilisateur deploy (sudoers + clé SSH).
- [ ] \(Optionel) Ajout script Bash pour l'automatisation.
- [x] Nouveau playbook pour l'automatisation (relance tous les rôles)

