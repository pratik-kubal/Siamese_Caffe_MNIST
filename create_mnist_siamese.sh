#!/usr/bin/env sh
# This script converts the mnist data into leveldb format.
set -e

EXAMPLES=/home/pratik/anaconda3/envs/aml/bin/
DATA=./

echo "Creating leveldb..."

rm -rf ./mnist_siamese_train_leveldb
rm -rf ./mnist_siamese_test_leveldb

$EXAMPLES/convert_mnist_siamese_data \
    $DATA/train-images-idx3-ubyte \
    $DATA/train-labels-idx1-ubyte \
    ./mnist_siamese_train_leveldb
$EXAMPLES/convert_mnist_siamese_data \
    $DATA/t10k-images-idx3-ubyte \
    $DATA/t10k-labels-idx1-ubyte \
    ./mnist_siamese_test_leveldb

echo "Done."
