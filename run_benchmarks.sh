#!/bin/bash
# filepath: run_benchmarks.sh

# Configuration
# DATASET="cohere-wikipedia-22-12-1k-angular"
DATASET="cohere-wikipedia-22-12-100k-angular"
# DATASET="cohere-wikipedia-22-12-1k-angular"


PARALLELISM=1
# ALGORITHMS=("qdrant" "pgvector" "elasticsearch" "pgvectorscale1" "pgvectorscale8" "pgvectorscale4")
ALGORITHMS=("milvus-hnsw" "milvus-hnsw-sq")

COUNT_VALUES=(5 10 20 30 40 60)
COUNT_VALUES=(10)


# Run benchmarks for each k value and algorithm
for count in "${COUNT_VALUES[@]}"; do
    for algorithm in "${ALGORITHMS[@]}"; do
        echo "Running benchmark: dataset=$DATASET, algorithm=$algorithm, count=$count"
        python run.py --dataset="$DATASET" --algorithm="$algorithm" --count="$count" --parallelism="$PARALLELISM" --runs=1

        # Check if the command succeeded
        if [ $? -ne 0 ]; then
            echo "Error: Benchmark failed for algorithm=$algorithm, count=$count"
            # Uncomment the next line if you want to stop on first error
            # exit 1
        fi
    done
done

echo "All benchmarks completed!"