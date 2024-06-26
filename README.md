# poc-data-model


### Schémas de données:
- Approche 1: Modèle de donnée Saas multi-table [company_prefix]__table_name (exemple de la table employee)
- Approche 2: Modèle de donnée Saas mono-table table_name (exemple de la table employée)

### Jeux de données:
- Approche 1:  5000 tables [company_prefix]_employees (5000 clients) avec 100.000 lignes par tables
- Approche 2: Une table employee avec 500000000 entrée

### The implementation:

>tables.sql contains scripts for approach 1
 
> table.sql contains scripts for approach 2

