# Guida al'uso di RRD_usageMem_test

Benvenuto alla guida all'uso del progetto RAM Usage Monitor! Questo documento fornisce istruzioni dettagliate su come utilizzare il progetto per monitorare l'utilizzo della RAM e generare grafici con i dati archiviati nel database RRD.

## Panoramica

Il progetto RAM Usage Monitor è progettato per monitorare l'utilizzo della RAM su un sistema Linux utilizzando un database RRD (Round Robin Database) per archiviare i dati e generare grafici.

## Requisiti 🛠️

Prima di iniziare, assicurati di avere installato i seguenti requisiti:

- Linux
- RRDtool (Round Robin Database Tool)
- Bash (Shell di Unix)
- Accesso di scrittura alla directory di lavoro

## Installazione e Configurazione ⚙️

1. **Clona il repository**: Clona il repository RAM Usage Monitor dal repository GitHub utilizzando il seguente comando:
   
   ```
   git clone https://github.com/dadaynamo/RRD_usageMem_test.git
   ```

2. **Configura lo script di aggiornamento**: Modifica lo script `update_ram_rrd.sh` per specificare il percorso del database RRD e personalizzare eventuali altri parametri di configurazione.

## Utilizzo 💻

1. **Esegui lo script di aggiornamento**: Esegui lo script `update_ram_rrd.sh` per aggiornare il database RRD con l'utilizzo corrente della RAM. Assicurati che lo script venga eseguito regolarmente per aggiornare i dati nel database.

   ```bash
   ./update_ram_rrd.sh
   ```

2. **Genera il grafico**: Esegui lo script `create_ram_graph.sh` per generare il grafico dell'utilizzo della RAM basato sui dati archiviati nel database RRD. Il grafico verrà salvato come un file PNG.

   ```bash
   ./create_ram_graph.sh
   ```

## Visualizzazione dei Dati 📊

Puoi visualizzare i dati archiviati nel database RRD utilizzando lo script `check_rrd_values.sh`. Questo script stamperà i valori dell'utilizzo della RAM presenti nel database.

```bash
./check_rrd_values.sh
```

## Esempi 📈

Di seguito sono mostrati alcuni esempi di grafici generati utilizzando il progetto RAM Usage Monitor:

![Grafico RAM Usage](ram_usage.png)

## Risoluzione dei Problemi ❗

Se incontri problemi durante l'utilizzo del progetto, assicurati di controllare i log di sistema per eventuali messaggi di errore e verifica che i requisiti siano stati soddisfatti correttamente.

## Contribuisci 🚀

Se desideri contribuire al progetto, puoi farlo aprendo una nuova issue o inviando una pull request su GitHub.

## Licenza 📄

Questo progetto è distribuito con licenza [MIT](LICENSE)
