Comprehensive Movie Analysis

Introduction

In this project, I will delve into the captivating world of movie analysis, offering insights into intriguing facts, addressing key questions, and elucidating the intricacies of our analytical approach.
Let's begin by outlining the foundational elements of our dataset. It has been meticulously curated through the scraping of data from three distinct websites, ensuring a diverse range of data types and information. This diversity is crucial, as it accommodates the multifaceted nature of movie analysis, catering to a variety of analytical objectives.
When I contemplate the world of cinema, we often think about genres, and rightly so. My primary focus will be on movie genres in visualization stage. However, my analytical journey encompasses an array of critical factors, including the movie's release year, actors, budget and profitability. All these elements will be employed in my comprehensive analysis, enabling me to glean valuable insights from this rich and multifarious dataset.


Part 1: Confidence Intervals

In the context of my analysis, I present a scenario involving a film director faced with a pivotal decision - whether to invest in a movie based on an exceptional plot. This director's dilemma lies in the uncertainty of whether the chosen plot will meet their expected objectives in terms of profit. 
To address this significant concern, I have strategically implemented the concept of confidence intervals. Specifically, I will consider a movie plot that prominently features the Adventure and Fantasy genres. The director is seeking answers to questions that revolve around the suitability of these genres. Does the plot require adjustments or perhaps a shift towards different genres? 
In my pursuit of addressing this critical inquiry, I shall embark on a practical analysis.
In this analysis, I commenced by plotting the data to assess its suitability for the implementation of confidence intervals.
implementation of confidence intervals.

<img width="575" alt="Screenshot 2023-11-02 at 9 09 04 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/117e8ece-ef3a-42e9-a449-a3e7492b87ea">


Upon initial examination, it becomes evident that the data deviates from a normal distribution. This is where the Central Limit Theorem (CLT) plays a pivotal role. Certain adjustments made to facilitate the attainment of a normal distribution while retaining valuable information.

<img width="589" alt="Screenshot 2023-11-02 at 9 13 09 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/725b7bd2-e591-4a18-98dd-b6657f3bc656">

As the data conforms to a normal distribution, I proceed with the implementation of confidence intervals. Based on our population result derived from our sample data, we can make conclusions, as follows:

<img width="1094" alt="Screenshot 2023-11-01 at 1 13 31 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/dba7415c-09c8-4580-b801-40bb319d8b54">

The decision to maintain the same genres or opt for changes ultimately rests with the director. 
However, the director couldn’t make his mind and expresses an interest in examining the analysis of different genres. I will fulfill this request during the visualization stage of the project.

Part 2: Hypothesis testing

Upon examination of our data matrix, we gain insight into various interrelationships. Among these, one of the most compelling findings pertains to the interaction between critical assessments and audience reception. These terms are demonstrated by 'Rotten Tomatoes Audience' and 'Tomatometer' columns. From color scales, it is evident that correlation is approximately 0.4. It's apparent that this relationship is not extensive, and this observation is quite comprehensible. This contrast originates from the inherent disparity in how audiences and critics evaluate films, each providing distinct viewpoints.

![download](https://github.com/aliiyevali/Movie-Project/assets/147966223/09a2d094-513a-4eed-8f15-7e3c36364ade)

 
A second prominent correlation lies in the link between IMDB ratings and profitability. Contemplating this relationship, one is prompted to consider a director's preference: a greater emphasis on profitability or an enhanced focus on audience satisfaction. Furthermore, a pivotal question arises regarding the extent to which these two influential factors are interconnected.
 
<img width="1095" alt="Screenshot 2023-11-01 at 1 20 25 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/af223e38-0d77-451a-b9da-93f2868e2ffa">

Based on the findings, a noteworthy relationship is evident. However, it's important to note that while the relationship is statistically significant, it doesn't necessarily signify a strong connection. Within our sample data, the calculated correlation coefficient between these two variables is 0.23. This value suggests that the relationship within our sample is relatively weak. We also observe that there are instances where certain movies achieved substantial profits despite not being well-received by the audience. Conversely, some movies garnered significant audience appreciation but yielded less profit than others. We delve more into that part in our Linear regression model.

Part 3: Visualizations

<img width="1440" alt="Screenshot 2023-10-31 at 4 24 10 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/5f7f98c1-2a0c-4fb9-8b19-6bab777eac07">

•	Genre Profitability Breakdown Chart:
This chart provides a comprehensive view of profitability in the film industry by genre. Each bar represents the total profit generated by movies in a specific genre. It allows us to discern which genres are most lucrative and which ones are less so. This information is vital for filmmakers and studios seeking to invest wisely and maximize returns.

•	Bubble Chart for Genre Profits and Movie Count:
In this bubble chart, I explored the relationship between the number of movies (represented on the x-axis) and the count of movies in each genre (displayed on the y-axis). Each bubble corresponds to a genre, with its size indicating the profitability of movies in that genre. This chart unveils insights into the trade-off between producing more movies and their respective profitability, helping industry professionals make informed decisions.

•	Director Profitability by MPAA Bars:
This bar chart presents a detailed breakdown of director profitability, highlighting the total profits they've accumulated from all their movies. The bars based on the MPAA ratings of their movies, providing a visual narrative of how directors' work aligns with different audience demographics. It offers valuable insights for both directors and studios in understanding the financial implications of MPAA ratings.

•	Genre Profit Boxplots:
The boxplots for genre profits present a visual summary of the profitability distribution within each movie genre. By displaying the spread, central tendency, and outliers, this chart enables a nuanced understanding of how profits vary across different genres. It's another valuable tool for filmmakers and studios to assess the financial landscape within specific genres.

•	Time Series Analysis of Foreign and Domestic Profit:
This time series analysis provides a historical perspective on how foreign and domestic profits have evolved over the years. Red line represents foreign profit while black line demonstrates domestic one. By tracking the trajectory of profits, it helps stakeholders in the film industry identify trends and make informed decisions about distribution strategies, target audiences, and market dynamics. It's an essential tool for forecasting future profitability.

Part 4 – Linear Regression Model

Initially, the data underwent a thorough outlier removal process. This step was essential to eliminate data points that exhibited exceptionally low profit values, which were deemed as outliers due to their implausibility and potential inaccuracies. Occasionally, extremely deviant data points may stem from erroneous data entry. In this context, I hold a degree of suspicion that our dataset may also include some. So that’s another reason for deleting them.

<img width="575" alt="Screenshot 2023-11-02 at 9 09 04 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/117e8ece-ef3a-42e9-a449-a3e7492b87ea">
 
We generated two dummy variables. The first one, with categories 'strong,' 'weak,' and 'middle,' assesses the profitability of specific film genres. In the 'strong' column, a value of 1 represents strong profitability, while 0 signifies otherwise. The second dummy variable evaluates the presence of top 250 stars in the cast. For instance, if four top 250 stars are part of the cast, the 'fouractors' column receives a value of 1.
In the subsequent phase, we optimized our dataset for the analysis by adhering to the 'n-1' dummy variable rule. Consequently, we made the decision to remove the 'Noactor' and 'Strong' columns. These columns are regarded as benchmarks, and their removal streamlines the data, rendering it more conducive for the analysis.
Upon closer examination, I noticed that the correlation between TMDB ratings and profit was relatively weak. To enhance our analysis and achieve linearity, I decided to transform the profit data into its logarithmic form. This transformation not only strengthens the relationship but also helps mitigate issues related to assumption called Heteroscedasticity. 

<img width="1040" alt="Screenshot 2023-11-01 at 3 21 15 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/7165eed1-e068-4440-b672-ebd54ab79ab8">

In the process of examining multicollinearity, we made the decision to omit certain columns. Notably, we removed the 'Year' column due to its strong influence on 'Budget. "Over time, the movie industry tends to advance, leading to improvements in both movie business and budgets. These advancements can be influenced by the impact of inflation too. Similarly, the 'Time' column was excluded due to a high correlation. In the final model, we retained seven factors, which is considered acceptable. 
 
<img width="1089" alt="Screenshot 2023-11-01 at 3 25 28 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/9eb62aba-918b-40f7-b2a5-ca48ed5f467c">

The columns within our final dataset exhibit some multicollinearity. However, these VIF values remain within an acceptable range.

<img width="963" alt="Screenshot 2023-11-01 at 3 27 36 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/4f424bc6-ba8f-40e9-af8f-65457d81053f">

As a result, we proceeded with 'Actors,' 'Genres,' 'Budget,' and 'TMDB' as the key factors in our analysis. Since all audience rankings are strongly correlated with each other, we randomly selected 'TMDB' for our analysis. It's important to emphasize that similar results could be obtained if other rankings were chosen for this purpose.
It's important to highlight that we standardized our values, ensuring that our results remain unaffected by variations in data scales.

Let's conclude with a look at our last two linearity graphs.
 
<img width="1095" alt="Screenshot 2023-11-01 at 3 30 26 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/669ceb54-c60c-46f5-93fa-2e0ad19aba72">

Upon performing predictions, we notice that our model encounters challenges in accurately forecasting profits as they increase, but it performs relatively well for lower profit ranges.

<img width="560" alt="Screenshot 2023-11-02 at 9 15 38 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/205fdea0-d7f4-4b06-914c-bcb2c61c9b78">

While the residuals are substantial, this outcome aligns with our expectations, given the broad-scale nature of our data and an R-Square value of 0.42.  

<img width="1053" alt="Screenshot 2023-11-01 at 3 31 59 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/1a7b4350-0e86-4896-b8a0-f607689d60be">

Notably, our analysis reveals no significant relationship between our independent variables and the residuals. This absence of endogeneity is a favorable outcome, indicating the model's robustness and a successful violation of one less assumption.

<img width="734" alt="Screenshot 2023-11-02 at 9 17 31 AM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/714ff674-e57e-4b1d-b2e3-0ef2c367bb81">

Upon examining the weight coefficients, we gain meaningful insights. Notably, we observe logical trends: an increase in budget is associated with an increase in profit, and higher TMDB ratings also correlate with increased profits. Furthermore, we notice that films featuring more popular actors have higher weight coefficients, suggesting that 'fouractors' films generate more profit compared to 'noactor' films, and even 'threeactors' films exhibit better profitability.

These logical outcomes provide assurance regarding the absence of omitted bias, which is a crucial concern in linear regressions. Omitted bias is a potentially detrimental assumption,, and its nonexistence within our model instills confidence in our findings.

<img width="1104" alt="Screenshot 2023-11-01 at 3 33 43 PM" src="https://github.com/aliiyevali/Movie-Project/assets/147966223/5e4a67fc-770b-4791-b9b6-33c5fde9a2af">

Conclusion:

Given an R-Square value of 0.41, it's understandable that our predictions can account for 41% of profitability. This is a logical outcome, considering that the success of a film is influenced by numerous external factors, including competitive productions, release dates, and marketing budgets. These are substantial variables that our model may not fully capture. Nevertheless, achieving a 41% explanation rate in such complex scenarios is a commendable result, highlighting the model's adequacy.

