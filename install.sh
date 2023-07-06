#!/usr/bin/env sh

pip install -r requirements.txt

HOME=`pwd`

# Chamfer Distance
cd $HOME/extensions/chamfer_dist
python setup.py install

# EMD
cd $HOME/extensions/emd
python setup.py install

# PointNet++
pip install "git+https://github.com/erikwijmans/Pointnet2_PyTorch.git#egg=pointnet2_ops&subdirectory=pointnet2_ops_lib"
# GPU kNN
pip install --upgrade https://github.com/unlimblue/KNN_CUDA/releases/download/0.2/KNN_CUDA-0.2-py3-none-any.whl