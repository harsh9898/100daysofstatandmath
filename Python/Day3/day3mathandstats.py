import pandas as pd
data = pd.read_csv('/content/mtcars.csv')
# mean
print('Mean: ',data['mpg'].mean())

# trimmed mean from scipy
import scipy.stats as sc
print('Trimmed Mean: ',sc.trim_mean(data['mpg'], 0.1))

# median
print('Median', data['mpg'].median())

import numpy as np
print('Weighted Mean: ',np.average(data['mpg'], weights = data['cyl']))

#pip install wquantiles
import wquantiles
# weighted median
print('Weighted Median: ',wquantiles.median(data['mpg'], weights = data['cyl']))