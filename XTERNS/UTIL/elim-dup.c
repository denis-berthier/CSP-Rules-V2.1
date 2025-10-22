// elim-dup.c
// Removes duplicate lines, preserves order
// Usage:
//   ./elim-dup input.txt > output.txt
//   cat input.txt | ./elim-dup - > output.txt

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define FIXED_LEN 81
#define MAX_LINE_LEN (FIXED_LEN + 2)   /* +2 for potential \r\n */
#define INITIAL_BUCKETS 131072         /* start with 128K buckets */
#define LOAD_FACTOR 0.7

typedef struct Node {
    char *line;
    struct Node *next;
} Node;

typedef struct {
    Node **buckets;
    size_t size;
    size_t count;
} HashTable;

static unsigned long hash_str(const char *s) {
    unsigned long h = 5381;
    int c;
    while ((c = (unsigned char)*s++))
        h = ((h << 5) + h) + c; /* h * 33 + c */
    return h;
}

static HashTable *ht_create(size_t size) {
    HashTable *ht = (HashTable*)malloc(sizeof(HashTable));
    if(!ht) { fprintf(stderr,"Memory error\n"); exit(1); }
    ht->size = size;
    ht->count = 0;
    ht->buckets = (Node**)calloc(size, sizeof(Node*));
    if(!ht->buckets) { fprintf(stderr,"Memory error\n"); exit(1); }
    return ht;
}

static void ht_free(HashTable *ht) {
    for (size_t i = 0; i < ht->size; ++i) {
        Node *n = ht->buckets[i];
        while (n) {
            Node *tmp = n->next;
            free(n->line);
            free(n);
            n = tmp;
        }
    }
    free(ht->buckets);
    free(ht);
}

static void ht_expand(HashTable *ht) {
    size_t new_size = ht->size * 2;
    Node **new_buckets = (Node**)calloc(new_size, sizeof(Node*));
    if(!new_buckets) { fprintf(stderr,"Memory error\n"); exit(1); }

    for (size_t i = 0; i < ht->size; ++i) {
        Node *n = ht->buckets[i];
        while (n) {
            Node *next = n->next;
            unsigned long h = hash_str(n->line);
            size_t idx = h % new_size;
            n->next = new_buckets[idx];
            new_buckets[idx] = n;
            n = next;
        }
    }
    free(ht->buckets);
    ht->buckets = new_buckets;
    ht->size = new_size;
}

static int ht_insert(HashTable *ht, const char *line) {
    if ((double)ht->count / ht->size > LOAD_FACTOR)
        ht_expand(ht);

    unsigned long h = hash_str(line);
    size_t idx = h % ht->size;
    Node *n = ht->buckets[idx];
    while (n) {
        if (strcmp(n->line, line) == 0)
            return 0;
        n = n->next;
    }

    Node *newnode = (Node*)malloc(sizeof(Node));
    if(!newnode) { fprintf(stderr,"Memory error\n"); exit(1); }
    size_t len = strlen(line);
    newnode->line = (char*)malloc(len+1);
    if(!newnode->line) { fprintf(stderr,"Memory error\n"); exit(1); }
    strcpy(newnode->line, line);
    newnode->next = ht->buckets[idx];
    ht->buckets[idx] = newnode;
    ht->count++;
    return 1;
}

int main(int argc, char **argv) {
    FILE *in = stdin;
    if (argc > 1 && strcmp(argv[1], "-") != 0) {
        in = fopen(argv[1], "r");
        if (!in) {
            fprintf(stderr, "Error: cannot open '%s'\n", argv[1]);
            return 1;
        }
    }

    HashTable *ht = ht_create(INITIAL_BUCKETS);
    char line[MAX_LINE_LEN];

    while (fgets(line, sizeof(line), in)) {
        size_t len = strlen(line);
        /* strip trailing \n and optional \r (Windows CRLF) */
        while (len && (line[len-1] == '\n' || line[len-1] == '\r'))
            line[--len] = '\0';

        if (ht_insert(ht, line))
            puts(line);
    }

    if (in != stdin) fclose(in);
    ht_free(ht);
    return 0;
}

