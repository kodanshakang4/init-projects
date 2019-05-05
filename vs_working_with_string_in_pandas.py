#%% Change working directory from the workspace root to the ipynb file location. Turn this addition off with the DataScience.changeDirOnImportExport setting
import os
try:
	os.chdir(os.path.join(os.getcwd(), 'my_note_book'))
	print(os.getcwd())
except:
	pass

#%%
import pandas as pd

world_dev = pd.read_csv("C:/Users/Stephen/Google Drive/Dataq/dq_datasets/World_dev.csv")
happiness2015 = pd.read_csv("C:/Users/Stephen/Google Drive/Dataq/dq_datasets/World_Happiness_2015.csv")
col_renaming = {'SourceOfMostRecentIncomeAndExpenditureData': 'IESurvey'}
merged = pd.merge(left=happiness2015, right=world_dev, how='left', left_on='Country', right_on='ShortName')
merged = merged.rename(col_renaming, axis=1)
merged


#%%
words = 'Danish krone'
# use the string.split() method to return the following list: ['Danish', 'krone']
listwords = words.split()
# last words of the list
listwords[-1]


#%%
def extract_last_word(element):
    listwords = str(element).split()
    return listwords[-1]

merged['Currency Apply'] = merged['CurrencyUnit'].apply(extract_last_word)
merged.head()    




