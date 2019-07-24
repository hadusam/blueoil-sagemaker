# Run Blueoil on Amazon Sagemaker
## Getting Started
### On sagemaker notebook instance
Create your notebook instanse on sagemaker and open jupyter, after launch jupyter, create new file and run a command as follows.
```
!git clone https://github.com/hadusam/blueoil-sagemaker
```
And open [blueoil-sagemaker/blueoil_cifar10_example.ipynb](./blueoil_cifar10_example.ipynb) via notebook.

### On your local environment
Note: You should configure your aws credentials by running `aws configure`.
Run commands as follows.
```
git clone https://github.com/hadusam/blueoil-sagemaker
cd blueoil-sagemaker
pip install -r requirements.txt
jupyter notebook
```
And open [blueoil_cifar10_example.ipynb](./blueoil_cifar10_example.ipynb) via notebook.
