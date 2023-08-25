Overview of this Research : 
==========================

Due to the ease with which information may be obtained and the exponential growth in the amount of information available on the internet, it has become more challenging to differentiate between false and genuine information. Any of these fake news websites may easily infect people due to their fabricated claims. This situation has a significant impact on the offline community in general. As a result, interest in this subject has grown. A critical study has been conducted on identifying fake news in English and other languages, save for a few in Bangla. Our research shows an experimental benchmark investigation into identifying false news on a Bengali news website since there is less work in this domain. This research analyzes 11434 fake news and true news stories in the Bengali language and evaluates the performance of machine learning and deep learning algorithms to create a benchmark for detecting Bangla fake news. This research compares the model’s performance to a variety of linguistic characteristics and word vectorizers. The best accuracy obtained for lemmatized text is 95.45% for TF-IDF with the SGD classifier and 95.10% for the count vectorizer with the MLP classifier. For stemmed text, we received the best accuracy of 94.9% for the count vectorizer with the MLP classifier and 94.83% for the TF-IDF with the MLP classifier. Among deep learning models, RNN gave the best performance with 96.55% accuracy, where the f1 score is 0.96. The pre-trained Bangla BERT model gave an F1-Score of 0.96 and showed an accuracy of 93.35%.

Findings from our research:
=========================


|Top Fake Word | AVG Length  | Bi gram Fake  |
|:---------------:  |:-----------:|:-------:|
|![Top_Fake_Word]|![AVG_Length_true_and_fake]|![Bi_gram_Fake]  |


|   Bigram True | Word Cloud |  Data Category | 
|:------------:|:------------:|:------------:|
|![Bigram_True]|![wordcloud]|![ Data_Category]|


Download |  Most Frequent Word |  Punctuation Mark |
|:-------------------:|:-------------:|:------------:|
|![Download]|![Most_Frequent_Word]|![Punctuation_Mark]|

|top true word   |  trigram fake |  trigram true |
|:-------------------:|:-------------:|:------------:|
|![toptrueword]|![trigramfake]|![trigramtrue]|





[Top_Fake_Word]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/Topfakeword.png
[AVG_Length_true_and_fake]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/avglengthTrueandFake.png
[Bi_gram_Fake]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/bigramfake.png
[Bigram_True]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/bigramtrue.png
[wordcloud]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/wordcloud.png
[ Data_Category]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/datacategory.png
[Download]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/download.png
[Most_Frequent_Word]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/most%20frequent%20word.png
[Punctuation_Mark]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/punctuation.png
[toptrueword]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/toptrueword.png
[trigramfake]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/trigramfake.png
[trigramtrue]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/trigramtrue.png




The output of our Research :
=========================



|FND_Bigram_tryGram | FND_DL_Performance  |
|:---------------:  |:-----------:|
|![FND_Bigram_tryGram]|![FND_DL_Performance]

|Performance of the models | Dataset distribution |
|:---------------:  |:-----------:|
|![FND_Performance]|![FND_Table]

|True News Detection in app | Fake News Detection app |
|:---------------:  |:-----------:|
|![FND_True_app]|![FND_Fake_app]


[FND_Bigram_tryGram]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_Bigram_tryGram.PNG
[FND_DL_Performance]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_DL_Performance.PNG
[FND_Performance]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_Performance.PNG
[FND_Table]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_Table.PNG
[FND_True_app]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_True%20app.PNG
[FND_Fake_app]: https://github.com/hasansust32/Bangla_Feke_News_Detection/blob/master/Figures/FND_Fake%20app.PNG




This is the overall outcome of our research:
========================================================

















