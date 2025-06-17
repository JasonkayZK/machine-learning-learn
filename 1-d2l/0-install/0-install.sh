# Step 1: Create Python env
conda create --name d2l python=3.9 -y

conda activate d2l

# Step 2: Download package

# 安装MXNet的GPU版本，首先需要知道已安装的CUDA版本。
# （可以通过运行nvcc --version或cat /usr/local/cuda/version.txt来检验。）

# 假设已安装CUDA 10.1版本，请执行以下命令：
# 对于Linux和macOS用户
# pip install mxnet-cu101==1.7.0

# 对于Windows用户
#pip install mxnet-cu101==1.7.0 -f https://dist.mxnet.io/python
# 可以根据CUDA版本更改如上mxnet-cu101的最后一位数字， 例如：CUDA 10.0是cu100， CUDA 9.0是cu90。

# 如果机器没有NVIDIA GPU或CUDA，可以按如下方式MXNet的CPU版本：

# Use: https://pypi.org/project/mxnet/1.7.0.post1/#files

pip install mxnet==1.7.0.post1

# 我们的下一步是安装d2l包，以方便调取本书中经常使用的函数和类：

pip install d2l==0.17.6

# Step 3: Download D2L Notebook

mkdir d2l-zh && cd d2l-zh
curl https://zh-v2.d2l.ai/d2l-zh-2.0.0.zip -o d2l-zh.zip
unzip d2l-zh.zip && rm d2l-zh.zip
