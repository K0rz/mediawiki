# Mediawiki

Déploiement de l'application Mediaiwiki sur Centos avec Ansible.

## Ligne de commande
*Déploiement d'Apache.*
```bash
ansible-playbook --user deploy -b -i wiki.inv install-apache.yml
```

_Déploiement de Mariadb._
```bash
ansible-playbook --user deploy -b -i wiki.inv install-mariadb.yml
```

*Déploiement de Mediawiki (Apache + Mariadb + Configuration).*
```bash
ansible-playbook --user deploy -b -i wiki.inv install-mediawiki.yml
```
## Liste des tâches
- [x] Initialisation du structure du projet.
- [ ] Installation d'Apache + PHP (Mise à jour).
- [ ] Installation et configuration du Firewall.
- [ ] Installation de MariaDB.
- [ ] Installation de MediaWiki (+ configuration).
- [ ] \(Optionel) Ajout de l'utilisateur deploy (sudoers + clé SSH).
- [ ] \(Optionel) Ajout script Bash pour l'automatisation.

