import pandas as pd
data = pd.read_csv('/content/mtcars.csv')
# standard deviatiion
print('SD: ',data['mpg'].std())

# variance
# variance = sd ^ 2
print('Variance: ',data['mpg'].std() ** 2)

# mean absolute deviation
print('MAD:  ', data['mpg'].mad())

# Range
print('Range:   ',max(data['mpg']) - min(data['mpg']))

# Percentile
print('75th percentile:',data.mpg.quantile(0.75))

# IQR
Q3 = data.mpg.quantile(0.75)
Q1 = data.mpg.quantile(0.25)
IQR = Q3 - Q1
print('IQR: ',IQR)