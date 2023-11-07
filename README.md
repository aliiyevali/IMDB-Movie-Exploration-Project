Results and Interpretations from Comprehensive Movie Analysis


Introduction

In this project, I will delve into the captivating world of movie analysis, offering insights into intriguing facts, addressing key questions, and elucidating the intricacies of our analytical approach.
Let's begin by outlining the foundational elements of our dataset. It has been meticulously curated through the scraping of data from three distinct websites, ensuring a diverse range of data types and information. This diversity is crucial, as it accommodates the multifaceted nature of movie analysis, catering to a variety of analytical objectives. 
When I contemplate the world of cinema, we often think about genres, and rightly so. My primary focus will be on movie genres in the visualization stage. However, my analytical journey encompasses an array of critical factors, including the movie's release year, actors, budget, and profitability. All these elements will be employed in my comprehensive analysis, enabling me to glean valuable insights from this rich and multifarious dataset.
Scraping was the first stage of analysis. At the end of the first stage, we had a Data frame with 3 different audiences and one critical Ranking, Cast, Genres, and Profit: including domestic and foreign percentages, Links, Years, Time, directors, and so on. We specially added some highly profited films as well as some flops to analyze the industry better and give some patterns that resonates population better.

<img width="782" alt="Screenshot 2023-11-05 at 2 58 27 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/ee52eb3b-66a2-4cb5-8c4f-a90e47781927">

Part 1: Storing Data to SQL Warehouse

After scraping all the data, it is imperative to store it in SQL Warehouses, which serve as a robust and versatile solution for data management. SQL (Structured Query Language) stands as a powerful tool for efficiently and securely storing, managing and pulling desired data with those queries . In our project, SQL plays a pivotal role, primarily employed for data storage, executing complex join and merge operations. The results below demonstrate the successful storage of data in SQL tables.  The result below accomplished by connecting to SQL database from Python Jupyter Notebook.![image](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/175fb519-f72d-4611-9c53-9352fe28ef10)

Part 2: Confidence Intervals

In the context of analysis, I present a scenario involving a film director faced with a pivotal decision - whether to invest in a movie based on an exceptional plot. This director's dilemma lies in the uncertainty of whether the chosen plot will meet his expected objectives in terms of profit. 
To address this significant concern, I have strategically implemented the concept of confidence intervals. Specifically, I will consider a movie plot that prominently features the Adventure and Fantasy genres. The director is seeking answers to questions that revolve around the profitability of these genres. Does the plot require adjustments or perhaps a shift toward different genres? 
In my pursuit of addressing this critical inquiry, I shall embark on a practical analysis.
In the graph below, I commenced by plotting the data to assess its suitability for the implementation of confidence intervals.

![download (1)](https://github.com/aliiyevali/Movie-Project/assets/147966223/6ea23ab4-fd57-4b47-b8db-8821112249b6)
 
Upon initial examination, it becomes evident that the data deviates from a normal distribution. This is where the Central Limit Theorem (CLT) plays a pivotal role. Certain adjustments are made to facilitate the attainment of a normal distribution while retaining valuable information. 

<img width="589" alt="Screenshot 2023-11-02 at 9 13 09 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/725b7bd2-e591-4a18-98dd-b6657f3bc656">

As the data conforms to a normal distribution, I proceed with the implementation of confidence intervals. Based on our population result derived from our sample data, we can make conclusions, as follows:

<img width="1094" alt="Screenshot 2023-11-01 at 1 13 31 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/dba7415c-09c8-4580-b801-40bb319d8b54">
 
The decision to maintain the same genres or opt for changes ultimately rests with the director and his financial objectives. 
However, the director couldn’t make up his mind and expressed an interest in examining the deeper analysis of different genres. I will fulfill this request during the visualization stage of the project.

Part 3: Hypothesis testing

<img width="1098" alt="Screenshot 2023-11-05 at 3 12 02 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/34d81c02-f3eb-443b-bd90-6a0ecdace108">

Upon examination of our data, we can calculate various interrelationships. One of the most compelling findings pertains to the interaction between critics’ assessments and audience reception. These terms are demonstrated by the 'Rotten Tomatoes Audience' and 'Tomatometer' columns. From the First codes, it is evident that the correlation is approximately 0.73. It's apparent that this relationship is quite strong. While the perspective and metrics of Audiences and critics may differ, in the end they ranked movies similarly.  
A second prominent correlation lies in the link between IMDB ratings and profitability. Contemplating this relationship, one is prompted to consider a director's preference: a greater emphasis on profitability or an enhanced focus on audience satisfaction. Furthermore, a pivotal question arises regarding the extent to which these two influential factors are interconnected. 

<img width="1095" alt="Screenshot 2023-11-01 at 1 20 25 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/af223e38-0d77-451a-b9da-93f2868e2ffa">
 
Based on the findings, a noteworthy relationship is evident. However, it's important to note that while the relationship is statistically significant, it doesn't necessarily signify a strong connection. Within our sample data, the calculated correlation coefficient between these two variables was 0.2 as shown in one of the pictures above. This value suggests that the relationship within our sample is relatively weak. We can interpret that score as there are instances where certain movies achieved substantial profits despite not being well-received by the audience. On the flip side, certain movies received substantial acclaim from audiences but generated less profit compared to other films that were already being surpassed by them in audience rankings. The scatter plot below clearly represents those findings. We delve more into that part in our Linear regression model.   

![download (2)](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/c123c595-9b2a-4392-a368-f6e264b0b0fe)

Part 4: Visualizations

<img width="1440" alt="Screenshot 2023-11-05 at 10 19 39 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/211b6e06-b032-40c7-b8f2-f7583c3f5479">

•	Genre Profitability Breakdown Chart:
This chart provides a comprehensive view of profitability in the film industry by genre. Each bar represents the total profit generated by movies in a specific genre. It allows us to discern which genres are most lucrative and which ones are less so. This information is vital for filmmakers and studios seeking to invest wisely and maximize returns.

•	Bubble Chart for Genre Profits and Movie Count:
In this bubble chart, I explored the relationship between the number of movies (represented on the x-axis) and the count of movies in each genre (displayed on the y-axis). Each bubble corresponds to a genre, with its size indicating the profitability of movies in that genre. This chart unveils insights into the trade-off between producing more movies and their respective profitability, helping industry professionals make informed decisions.

•	Director Profitability by MPAA Bars:
This bar chart presents a detailed breakdown of director profitability, highlighting the total profits they've accumulated from all their movies. The bars are based on the MPAA ratings of their movies, providing a visual narrative of how directors' work aligns with different audience demographics. It offers valuable insights for both directors and studios in understanding the financial implications of MPAA ratings.

•	Genre Profit Boxplots:
The boxplots for genre profits present a visual summary of the profitability distribution within each movie genre. By displaying the spread, central tendency, and outliers, this chart enables a nuanced understanding of how profits vary across different genres. It's another valuable tool for filmmakers and studios to assess the financial landscape within specific genres.

•	Time Series Analysis of Foreign and Domestic Profit:
This time series analysis provides a historical perspective on how foreign and domestic profits have evolved over the years. The red line represents foreign profit while the black line demonstrates domestic one. Tracking the trajectory of profits helps stakeholders in the film industry identify trends and make informed decisions about distribution strategies, target audiences, and market dynamics. It's an essential tool for forecasting future profitability.

Part 5: Clustering & Preparing for Model

First, we need to decide on independent and dependent variables. Asking questions like What is the best metric for determining movie success can also be intuitive in that first stage of model creation. Furthermore, answering this question requires deep knowledge of data that why data analysis is the most crucial step. For better understanding, I created a color matrix that displays the relationship between core variables. How these variables have been  assessed as core and the reason why they have been chosen over others will be clarified in the Multicollinearity assumption and VIF calculations section. 

![download (3)](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/7bf73cb9-98bc-4b8e-96c2-262be9567272)
 
We can call this stage the independent variable elimination process because which values that will be selected for modelling are determined in that stage. In those stages, it is better to continue with most correlated variables with dependent variables. In our case, Profit is represented as ‘worldwide’ chosen as the dependent variable. After choosing core independent variables, it is time to analyze them deeper, making transformations if needed and analyzing their relationship with dependent variables deeper often as scatter plots. We already decided on the dependent variable, it is time to analyze its distribution and delete some outliers if there are any. Extreme outliers can increase the complexity of our data. It will create problems for the model to understand patterns and making better predictions.
After deciding on numerical values, I also need to utilize some dummies for better model performance. I decided to add two dummies. One includes how many top actors played in that film while the other will be about genres. These 2 can affect movie profit extensively. We already scraped the most popular actors from the IMDB website, so we need to create columns that showcase how many of them participating in that movie.  

<img width="1103" alt="Screenshot 2023-11-05 at 3 57 34 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/6981794a-5473-463c-a4bd-814f02647053">

First, we created column named BestActorPresent, to show how many most popular actors played. Then we divided that column into 5 ones as the maximum number in that column was 4. This action will give better results while implementing predictions.
Our first dummy columns are ready, We need to create one that contains data for genres. I will do it by the help of k-means clustering and elbow method. This machine learning algorithm will group movies for us based on their genres and profitability. One thing k-means clustering struggles to much is scales of variables that’s why standardization is so crucial in that process. However, one question comes to mind. How many groups must be included? The elbow method comes in to help us determine it.

<img width="905" alt="Screenshot 2023-11-05 at 4 04 19 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/d8251f0f-345e-41e7-a2d5-c43f34194d7f">
 
The elbow method often shows one break point looks like an elbow that after that point, line starts to plateau. Unfortunately, it is not that easy in our case so we implemented the method by different k’s and decided on model best groups when k is equal to 6.
As our case includes Different genres as different columns there is no logical graphical way to show results in that way. But we can interpret results with our mathematical skills.

<img width="1109" alt="Screenshot 2023-11-05 at 4 30 38 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/c432608d-f1be-4a3a-b468-bf41deeda345">
 
The first dimension of parting was profit. As we can see profits of different clusters differ significantly.

<img width="1030" alt="Screenshot 2023-11-05 at 4 11 39 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/75889962-441b-416b-8d0d-a64a3c69e67a">

These graphs show the same means and the distribution of those groups better. As we notice the number of them is different, while the first graph has more data the last one has less. The third group probably includes more general genres while the last one is more specific. Let’s identify this issue.

<img width="1101" alt="Screenshot 2023-11-05 at 4 18 45 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/54751e4e-d76f-43d3-a72a-22b06df5b7f1">
 
We observed our thesis was correct. While the third group included more general genres the last one is so specific. You can imagine our third group movies like Deadpool while the last one can be imagined as Titanic ones.
Our numerical variables are ready, our Dummies & Clusters are ready, and we analyzed data very deeply by including visualizations with the help of Tableau dashboards, it is time to create an actual model.
 
Part 6: Linear Regression Model

Let’s start with addressing all conditions or assumptions that need to be met in the linear regressions. 
1.	Zero mean
2.	Normality
3.	Linearity
4.	No Endogeneity
5.	No Autocorrelation
6.	Homoscedasticity/Heteroscedasticity
7.	Multicollinearity 
8.	Omitted variable bias

So, the data underwent a thorough outlier removal process. During analysis, we observed extremely deviant data points and they may stem from erroneous data entry. In this context, I hold a degree of suspicion that our dataset may also include some. So that’s another reason for deleting them. A data scientist must maintain the balance of deleting a sufficient number of outliers as excessive deleting can cause losses of valuable data. Our latest Profit distribution:

<img width="575" alt="Screenshot 2023-11-02 at 9 09 04 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/117e8ece-ef3a-42e9-a449-a3e7492b87ea">
 
In the subsequent phase, we optimized our dataset for the analysis by adhering to the 'n-1' dummy variable rule. Consequently, we decided to remove the 'Noactor' columns. This column will be regarded as a benchmark. As you will see its removal streamlines the data, rendering it more conducive for the analysis.
Upon closer examination, I noticed that the relationship between TMDB ratings and profit was not linear as expected. To enhance our analysis and achieve linearity, I decided to transform the profit data into its logarithmic form. This transformation not only strengthens the relationship but also helps mitigate issues related to the assumption called Heteroscedasticity. (Heteroscedasticity eliminated 1/8)

<img width="1040" alt="Screenshot 2023-11-01 at 3 21 15 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/7165eed1-e068-4440-b672-ebd54ab79ab8">
 
In the process of examining multicollinearity, I decided to omit certain columns. Notably, we removed the 'Year' column due to its strong influence on the budget. Over time, the movie industry tends to advance, leading to improvements in both movie business and budgets. These advancements can be influenced by the impact of inflation too. Similarly, the “Time” column was excluded due to a high correlation. It is also logical, as the years go by, duration of movies increases, some long movies may feel like boring and result in poor ratings. In the final model, we retained seven factors, which is considered acceptable. 

<img width="1109" alt="Screenshot 2023-11-05 at 4 30 38 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/c432608d-f1be-4a3a-b468-bf41deeda345">
 
The columns of our final dataset and their VIFs are represented below. Their VIF values remain within an acceptable range. (Multicollinearity eliminated 2/8) 

<img width="1096" alt="Screenshot 2023-11-05 at 4 33 48 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/5464c055-4eab-4e78-8ccd-f3846d59cfcb">

As a result, we proceeded with 'Actors,' 'Genres,' 'Budget,' and 'TMDB' as the key factors in our analysis. Since all audience rankings are strongly correlated with each other, we randomly selected 'TMDB' for our analysis. It's important to emphasize that similar results could be obtained if other rankings were chosen for this purpose.
It's important to highlight that we standardized our values, ensuring that our results remain unaffected by variations in data scales. Let's conclude with a look at our last two linearity graphs. (Linearity eliminated 3/8)

<img width="1095" alt="Screenshot 2023-11-01 at 3 30 26 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/669ceb54-c60c-46f5-93fa-2e0ad19aba72">
 
As you can observe from the codes after creating the model first thing, I implemented was dividing my data into training and test datasets. One of the biggest concerns when creating regression models is overfitting and underfitting. Overfitting means that the model considers the initial data so high that whenever the same model is tried on new datasets it fails to predict. The best way to avoid this problem is by implementing train-test-split.

<img width="1121" alt="Screenshot 2023-11-05 at 4 40 34 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/1c7c79d6-ae51-4847-af7b-e285bd10f732">
 
In the graph below one of the axes represents actual values while the other represents predicted ones. When we look at the graph, we can see that they follow a discernible pattern rather than being random. Will analyze our predictions deeper in a while.  

![download (4)](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/3d486ba9-2d9b-479f-b7b9-603a43c46906)

We observe an R-square of 0.41. It means our model explains 41% of profitability. It also means there will be some significant errors while implementing that model. What are the 59% remaining? The answer to this question can be Release date of the film, the Competitiveness of film market at this time or how much proportion of the budget is consumed on marketing. While Maximizing R-square is one concern of the Linear regression model, it is not the main concept. The aim is to bring out the best model possible from the data at hand. Income predictions are the most complicated ones and R-Square of 41 is not bad for that complexity.

<img width="1097" alt="Screenshot 2023-11-01 at 4 01 17 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/ac31b495-2db5-4575-b49a-11c0d09516b7">
 
When observing the distribution of residuals, we notice it is normally distributed, mean is so close to 0. These 2 results mean we are free from another 2 critical assumptions. (Zero Mean & Normality eliminated 5/8)

![download (5)](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/a13f18d9-3725-47a0-8758-0a468e78fb97)
  
Notably, our analysis reveals no significant relationship between our independent variables and the residuals. This absence of endogeneity is favorable 
outcome, indicating the model's robustness and successful avoidance of one more assumption. (Endogeneity eliminated 6/8) 

<img width="734" alt="Screenshot 2023-11-02 at 9 17 31 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/714ff674-e57e-4b1d-b2e3-0ef2c367bb81">

Autocorrelation is more relevant in time series forecasting where you are trying to predict values at different time points based on past values of the same variable. As our analysis doesn’t include such conditions, we can conclude there is nothing related to this assumption. (Autocorrelation eliminated 7/8)
Upon examining the weight coefficients, we gain meaningful insights. Notably, we observe logical trends: an increase in budget is associated with an increase in profit, and higher TMDB ratings also correlate with increased profits. Furthermore, we notice that films featuring more popular actors have higher weight coefficients, suggesting that 'four actors' films generate more profit compared to 'no actor' films, and even 'three actors' films exhibit better profitability. While positive weights of numerical variables indicate a positive relationship between them and the dependent variable, positive dummy values mean the same thing in accordance with the benchmark dummy. Remember, when I mentioned “No Popular actor” column considered as Benchmark.
These logical outcomes provide assurance regarding the absence of omitted bias, which is a crucial concern in linear regressions. Omitted bias is a potentially detrimental assumption, and its nonexistence within our model instills confidence in our findings. When this assumption occurs, there will be highly illogical patterns identifying that something highly important missing in the model. The best example of OVB happens when you try to predict house prices without the most important variable: Location. Without location, whole data will not make sense as some big houses have cheap prices while some of the smaller ones will have expensive prices. These kinds of illogical results are the best sign of OVB. While our model may lack some important data, it can still produce logical outcomes. This means that other variables in the model still provide valuable information for making predictions, even if some information is missing. We have managed to mitigate the impact of the omitted variable bias. This is a positive outcome, but it's important to acknowledge that the model may still have limitations due to the missing variable. Due to logical outcomes, we can consider this condition as partly avoided. (Omitted variable bias eliminated 7.5/8) 

<img width="1097" alt="Screenshot 2023-11-05 at 4 57 43 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/2003f31a-7e26-47fe-84f7-75302391f1b2">
 
Conclusion:
The most practical way to analyze residuals is by percentage as scales are so high. As we can see Model performed well on some Movies as little as 1% difference while there are also some outliers as -128%. These outliers are some breakpoints of our model and indicate something out of our model’s logic. We already mentioned the complexity of Income and its different factors in the movie industry.

<img width="1084" alt="Screenshot 2023-11-05 at 5 01 36 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/98a00f6b-e0b7-449d-85ae-894d8d687d0a">
 
Keep in mind that the primary goal of modeling isn't just to optimize R-squared; it's to optimize R-squared from the available data and extract the maximum explanatory power from the data at hand. One can manipulate some data and maximize its R square. But this is quite illogical as it would break all patterns and understanding of data.  More valuable thing in that situation is getting a better understanding of the industry.
It's also important to understand that our dataset has limitations. We lack critical information, such as marketing expenditures, market competition, and release dates, all of which significantly influence a movie's overall performance. These factors often result in movies following a plateau or exponential distribution pattern, starting strong and gradually tapering off. These exponential distributions can be considered as snowball effect in simple terms. Profit is equal to interest and interest is equal to money. Interest as a factor often results in a plateau or exponential distribution pattern, starting strong and gradually tapering off. That’s the reason why the release date plays a crucial role, how it impacts a movie's initial success. These are factors that fall into 59% that our model didn’t consider. Everything correlated with interest follows the same pattern, you can think of music industry or YouTube videos as well.
 In this assignment, I made some valuable analyses as well as interpretations, gained insights into the movie industry, and explained some machine learning models with their details such as assumptions in simple terms.

References:

https://www.simplilearn.com/tutorials/statistics-tutorial/central-limit-theorem#:~:text=and%20its%20applications.-,What%20is%20the%20Central%20Limit%20Theorem%3F,equal%20to%20the%20population%20mean. 

https://www.udemy.com/course/the-data-science-course-complete-data-science-bootcamp/learn/lecture/10777190#content 

Povak, N. A., Hessburg, P. F., McDonnell, T. C., Reynolds, K. M., Sullivan, T. J., Salter, R. B., & Cosby, B. J. (2014). Machine learning and linear regression models to predict catchment-level base cation weathering rates across the southern Appalachian Mountain region, USA. Water Resources Research, 50(4), 2798–2814. https://doi.org/10.1002/2013WR014203








