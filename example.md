python run.py --dataset=cohere-wikipedia-22-12-1k-angular --algorithm=qdrant --k=5                

python run.py --dataset=cohere-wikipedia-22-12-1k-angular --algorithm=qdrant --k=5                

python plot.py --x-scale logit --y-scale logit --dataset=cohere-wikipedia-22-12-1k-angular --algorithm=qdrant --k=5       

python plot.py --dataset=cohere-wikipedia-22-12-1k-angular


cohere-wikipedia-22-12-100k-angular



python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=5 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=5 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=10 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=10 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=20 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=20 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=30 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=30 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=40 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=40 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=qdrant --k=60 --parallelism=3
python run.py --dataset=cohere-wikipedia-22-12-100k-angular --algorithm=pgvector --k=60 --parallelism=3