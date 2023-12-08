Results and Interpretations from Comprehensive Movie Analysis


# Introduction

In this project, I will delve into the captivating world of movie analysis, offering insights into intriguing facts, addressing key questions, and elucidating the intricacies of our analytical approach.
Let's begin by outlining the foundational elements of our dataset. It has been meticulously curated through the scraping of data from three distinct websites, ensuring a diverse range of data types and information. This diversity is crucial, as it accommodates the multifaceted nature of movie analysis, catering to a variety of analytical objectives. 
When I contemplate the world of cinema, we often think about genres, and rightly so. My primary focus will be on movie genres in the visualization stage. However, my analytical journey encompasses an array of critical factors, including the movie's release year, actors, budget, and profitability. All these elements will be employed in my comprehensive analysis, enabling me to glean valuable insights from this rich and multifarious dataset.
Scraping was the first stage of analysis. At the end of the first stage, we had a Data frame with 3 different audiences and one critical Ranking, Cast, Genres, and Profit: including domestic and foreign percentages, Links, Years, Time, directors, and so on. I specially added some highly profited films as well as some flops to analyze the industry better and give some patterns that resonates population better.
After conducting a thorough analysis, I employed Machine Learning techniques to forecast a movie's income based on various factors, including its genres, budget, rank, year, and domestic opening. As anticipated, the Neural Networks model emerged as the top-performing choice, reaffirming its consistent excellence in predictive accuracy.

<img width="782" alt="Screenshot 2023-11-05 at 2 58 27 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/ee52eb3b-66a2-4cb5-8c4f-a90e47781927">

# Part 1: Storing Data to SQL Warehouse

After scraping all the data, it is imperative to store it in SQL Warehouses, which serve as a robust and versatile solution for data management. SQL (Structured Query Language) stands as a powerful tool for efficiently and securely storing, managing and pulling desired data with those queries. In our project, SQL plays a pivotal role, primarily employed for data storage, executing complex join and merge operations. The results below demonstrate the successful storage of data in SQL tables.  The result below accomplished by connecting to SQL database from Python Jupyter Notebook. 

<img width="1220" alt="Screenshot 2023-11-07 at 12 58 19 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/d5285ce7-ef8c-45dc-adfb-d74dde6f95b7">

# Part 2: Confidence Intervals

In the context of analysis, I present a scenario involving a film director faced with a pivotal decision - whether to invest in a movie based on an exceptional plot. This director's dilemma lies in the uncertainty of whether the chosen plot will meet his expected objectives in terms of profit. 
To address this significant concern, I have strategically implemented the concept of confidence intervals. Specifically, I will consider a movie plot that prominently features the Adventure and Fantasy genres. The director is seeking answers to questions that revolve around the profitability of these genres. Does the plot require adjustments or perhaps a shift toward different genres? In my pursuit of addressing this critical inquiry, I shall embark on a practical analysis.
In the graph below, I commenced by plotting the data to assess its suitability for the implementation of confidence intervals.

![download (1)](https://github.com/aliiyevali/Movie-Project/assets/147966223/6ea23ab4-fd57-4b47-b8db-8821112249b6)
 
Upon initial examination, it becomes evident that the data deviates from a normal distribution. This is where the Central Limit Theorem (CLT) plays a pivotal role. Certain adjustments are made to facilitate the attainment of a normal distribution while retaining valuable information. 

<img width="589" alt="Screenshot 2023-11-02 at 9 13 09 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/725b7bd2-e591-4a18-98dd-b6657f3bc656">

As the data conforms to a normal distribution, I proceed with the implementation of confidence intervals. Based on our population result derived from our sample data, we can make conclusions, as follows:

<img width="1094" alt="Screenshot 2023-11-01 at 1 13 31 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/dba7415c-09c8-4580-b801-40bb319d8b54">
 
The decision to maintain the same genres or opt for changes ultimately rests with the director and his financial objectives. 
However, the director couldn’t make up his mind and expressed an interest in examining the deeper analysis of different genres. I will fulfill this request during the visualization stage of the project.

# Part 3: Hypothesis testing

<img width="1098" alt="Screenshot 2023-11-05 at 3 12 02 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/34d81c02-f3eb-443b-bd90-6a0ecdace108">

Upon examination of our data, we can calculate various interrelationships. One of the most compelling findings pertains to the interaction between critics’ assessments and audience reception. These terms are demonstrated by the 'Rotten Tomatoes Audience' and 'Tomatometer' columns. From the first codes, it is evident that the correlation is approximately 0.73. It's apparent that this relationship is quite strong. While the perspectives and metrics of audiences and critics may differ, in the end, they ranked movies similarly. I will not use those values for correlation coefficient hypothesis testing, because checking that thesis would not provide any value. Let’s choose more complicated yet interesting variables.
A second interesting correlation lies in the link between IMDB ratings and profitability. Contemplating this relationship, one is prompted to consider a director's preference: a greater emphasis on profitability or an enhanced focus on audience satisfaction. Furthermore, a pivotal question arises regarding the extent to which these two influential factors are interconnected. 
To answer that question, let’s investigate scatter plots and correlation coefficients. We can observe from our scatter plot that there are instances where certain movies achieved substantial profits despite not being well-received by the audience. On the flip side, certain movies received substantial acclaim from audiences but generated less profit compared to other films that were already being surpassed by them in audience rankings. 

![download (2)](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/c123c595-9b2a-4392-a368-f6e264b0b0fe)

While inspecting distributions we can clearly see that profit distribution is far from normality. There is also not a strong linear relationship between these 2. All these findings lead us to choose Spearman's rank correlation coefficient, which is a non-parametric measure of rank correlation that assesses how well the relationship between two variables can be described using a monotonic function. 

<img width="1096" alt="Screenshot 2023-11-09 at 2 06 37 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/f5ac36ca-6ffe-4484-9aeb-a2abad25550e">

As you can see the null hypothesis (H0) posits that the Spearman's rank correlation coefficient (rho) is zero, indicating no relationship. Conversely, the alternative hypothesis (H1) suggests that rho is not equal to zero, implying a significant relationship between the two variables.
The Spearman correlation coefficient and the associated p-value are computed. For verification purposes, I calculated the t-statistic by myself. This is done to ensure the accuracy of the p-value obtained from software calculations. I concluded that this p-value is extremely low and almost impossible to find from the table, which is why software is used to determine the exact number. Since the p-value is less than alpha, the result indicates that the null hypothesis is rejected, and there is a statistically significant correlation between worldwide earnings and IMDB ratings. 

<img width="1085" alt="Screenshot 2023-11-09 at 2 15 44 PM" src="https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/59cf6496-58a3-41cc-a89f-7b82b9017297">

As a result, there is a correlation between the worldwide earnings and IMDB ratings of movies at 95% significance level . However, the correlation coefficient of 0.219 suggests that while the correlation is statistically significant, it is weak in strength, as I mentioned earlier. 

# Part 4: Visualizations

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

# Part 5: Clustering & Preparing for Model

First, we need to decide on independent and dependent variables. Asking questions like ‘What is the best metric for determining movie success can also be intuitive in that first stage of model creation’. For better understanding, I created a color matrix that displays the relationship between core variables. 

![Deyisim](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/35c06927-e9aa-48aa-82fb-13aba7578240)

I have decided to predict Income by Budget, Rank, Distributor, Year, Genres and domestic Opening of movies. After deciding on numerical values, I also need to utilize some dummies for better model performance. I decided to add two dummies. One includes distributor of film while the other will be about genres. These 2 can affect movie profit extensively. 
I need to create categorical column that contains data for genres. I will do it by the help of k-means clustering and elbow method. This machine learning algorithm will group movies for us based on their genres and profitability. However, one question comes to mind. How many groups must be included? The elbow method comes in to help us determine it. 

![deyisim2](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/75c5972c-11e4-4460-b585-83495ce04abb)

The elbow method often shows one break point looks like an elbow that after that point, line starts to plateau. Unfortunately, it is not that easy in our case so we implemented the method by different k’s and decided on model best groups when k is equal to 8.
The first dimension of parting was profit. As we can see profits of different clusters differ significantly.

![deyisim3](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/b2b6b63e-cf0e-4aff-9633-63f33217ff88)

These graphs show the same means and the distribution of those groups better. As we notice the number of them is different, while the first graph has more data the last one has less. The third group probably includes more general genres while the last one is more specific. You can imagine our third group movies like Deadpool while the last one can be imagined as Titanic ones. It is time to create an actual model.

# Part 6: Linear Regression Model

I have implemented a range of regression models, including Linear, Ridge, Lasso, Random Forest, XGBoost, and a Neural Network. My decision to use these models was based on their performances and a thorough analysis of error metrics.

Linear Regression

I began with the Linear Regression model, which initially performed well on the training dataset. However, when I applied it to the test set, it produced remarkably poor results. This led me to conclude that we required a more complex model with improved predictive capabilities. Ridge and Lasso regressions also implemented but there is no improvement as our model struggles with underfitting while these models help with overfitting and multicollinearity. Poor performance of linear regression on unseen data:

![deyisim4](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/c1ba2a5b-02eb-4956-8b9b-46ae6f7b521c)

Random Forest & XGBoosting
Random Forest and XGBoosting are indeed powerful performance models. After extensive hyperparameter tuning efforts, I identified the optimal parameters for both models, achieving the highest R-squared values.  However, in my case, I had to exercise caution regarding overfitting. While they demonstrated exceptional performance on the training data, their performance deteriorated significantly when applied to unseen data.
Predictions for XGBoosting and Random Forest are acceptable, but the lingering issue of overfitting remains a significant concern. The model cannot guarantee consistent performance on numerous unseen datasets due to the presence of overfitting, which raises doubts about its reliability. 

![deyisim6](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/43781838-9e1d-420c-bd53-940d80697eee)

Neural Network
The training process of the neural network, as depicted in the plots, demonstrates a well-conducted learning phase with both the loss and mean absolute error (MAE) metrics showing significant improvement after the initial epoch and stabilizing as training progresses. The convergence of the training and validation loss, as well as the MAE, suggests that the model is generalizing well without signs of overfitting, where overfitting would be indicated by a divergence where validation loss increases while training loss continues to decrease. Similarly, there is no indication of underfitting, which would be evident if both training and validation errors remained high, implying that the model has sufficient complexity to capture the underlying patterns in the data. The early stopping mechanism appears to have effectively prevented unnecessary computations by halting the training at an optimal point, avoiding the risk of overfitting by not iterating beyond the point of improvement. The model's performance on both sets being close in value indicates that it should perform consistently on both seen and unseen data. Overall, the plots suggest a successful training outcome with the model poised to make accurate predictions.

![deyisim7](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/aee6bfbe-db06-46f6-8bdd-d7d8e0376008)

Result: The model has enough complexity to learn from the training data and the ability to generalize this learning to validation data it has not seen before, resulting in good predictive performance.

The scatter plot showcases the percentage differences between actual and predicted values against the actual values on the original scale, revealing that a majority of the predictions are clustered near the zero line, indicating a generally accurate model on a percentage basis. The presence of outliers with high percentage errors suggests that while the model is effective for most of the data, there are specific instances where it performs not-well. However, the presence of some outliers in my data is a natural characteristic. Removing them would lead to a loss of valuable insights and potentially result in overfitting. The plot also highlights the sensitivity of percentage errors to actual values near zero, where even small deviations can result in large percentage discrepancies. Despite these outliers, the lack of a discernible pattern across the range of actual values suggests the model does not suffer from systematic bias.

![deyisim9](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/8d91ae67-b1a8-41ec-9620-fb2bdc6c85c0)

The Q-Q plot of residuals indicates that the residuals from the regression model approximate normality in the central quantiles, as evidenced by their alignment with the red reference line. The bulk of the residuals conforming to the expected normal distribution is a positive indication of model fit. 

![deyisim5](https://github.com/aliiyevali/IMDB-Movie-Exploration-Project/assets/147966223/2bf09e18-b80b-4723-8996-c7cb938cccf8)

Conclusion:
In Inferential statistics I found out why some assumptions are right and how must a director approach to his plots’ genre selection. When it comes to predictive statistics, My implementation started with Linear regression. Linear regression displayed strong performance on the training dataset but fell short when applied to unseen data. Recognizing the challenge posed by the inherently unpredictable nature of income prediction, I sought to address this issue by exploring more intricate models. While Ridge and Lasso regression were capable of handling multicollinearity and overfitting concerns, our primary challenge turned out to be underfitting, and these models did not provide a solution. Consequently, I proceeded to experiment with Random Forest and XGBoosting as potential alternatives. Although they achieved exceptional results on the training data, they encountered issues with overfitting. This prompted me to turn to a Neural Network approach, which allowed me to strike a perfect balance between model complexity and predictive performance. This is why I favor this model over others.![image]

References:

https://www.simplilearn.com/tutorials/statistics-tutorial/central-limit-theorem#:~:text=and%20its%20applications.-,What%20is%20the%20Central%20Limit%20Theorem%3F,equal%20to%20the%20population%20mean. 

https://www.udemy.com/course/the-data-science-course-complete-data-science-bootcamp/learn/lecture/10777190#content 

Povak, N. A., Hessburg, P. F., McDonnell, T. C., Reynolds, K. M., Sullivan, T. J., Salter, R. B., & Cosby, B. J. (2014). Machine learning and linear regression models to predict catchment-level base cation weathering rates across the southern Appalachian Mountain region, USA. Water Resources Research, 50(4), 2798–2814. https://doi.org/10.1002/2013WR014203








