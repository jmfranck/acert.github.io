cd

# grab and build pyspecdata, which is used in some of the examples
git clone https://github.com/jmfranck/pyspecdata.git
cd pyspecdata
python setup.py develop
read -p "pyspecdata is done, I'm pausing so you can just see if there's an error.  Press enter to continue...."

# Even though they will later be combined, each of the following branches has features we want to demo.  To avoid confusion, just put them in different directories.
cd ..
git clone https://jfranck@bitbucket.org/jfranck/nlsl.git
mv nlsl nlsl_1D
cd nlsl_1D
git branch -t python origin/python
git checkout python
python setup.py develop
read -p "nlsl_1D is done, I'm pausing so you can just see if there's an error.  Press enter to continue...."

cd ..
git clone https://jfranck@bitbucket.org/jfranck/nlsl.git
mv nlsl nlsl_2D
cd nlsl_2D
git branch -t nlspmc origin/nlspmc
git checkout nlspmc
make
read -p "nlsl_2D is done, I'm pausing so you can just see if there's an error.  Press enter to continue...."

cd ..
git clone https://jfranck@bitbucket.org/jfranck/nlsl.git
mv nlsl nlsl_basispruning
cd nlsl_basispruning
git branch -t basis_pruning origin/basis_pruning
git checkout basis_pruning
read -p "nlsl_basispruning is done, I'm pausing so you can just see if there's an error.  Press enter to continue...."

# grab the directory that contains some of the examples (note that some of the examples are also in the python branch, above
cd ..
git clone https://github.com/jmfranck/workshop_examples.git
echo "all done"

