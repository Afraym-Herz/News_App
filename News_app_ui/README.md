# news_app


## Home Screen

### App Bar

1 - made app bar with two text with different color so we put two widgets in the row in parameter title and we put elevation equal zero to prevent shadow under text

### 1 - Scroll

1 - we use widget customScrollView  this widget use to put all Lists and widgets in same list
such as we create category list in top of Home Screen ( horizontal scroll ) and under this list we create another list to show the news
when we scroll the Screen vertically the (H scroll) still in the top so we use CustomScrollView to scroll (H scroll)  vertically 

2- we use parameter slivers that accept group of Slivers widgets not normal widgets so we use widget ( SliverToBoxAdapter ) to convert normal widget to SliverWidget 




## Category ListView 

### 1 - Category Model 

1 - Category Model is class accept and contains data about category ( text - image )

### 2 -  categories list (conatain all CategoryModel)

1 - we create list of CategoryModels to put it in ListView.builder to build items which puted in list

## News Services ( API section )

### 1 - Article Model 

1 - Article Model is class that contain the important parts which we want to use them to show the News ( image , title and subtitle ) 

2 - we use Factory constructor named fromJson that accept Map (because the api is make by Maps) and return the parts we want by accept the keys which exist in API parts 
such as we send to (the Article model's factory constructor) the Map which we want it and in factory constructor we get the data which we want by add the key of map to the Map which is sent and save it in attribute of class Article Model

### 2 - Dio package

1 - we use this package to send request and get response with API and handle our code 

### 3 - getHeadLines() 

1 - we use (Future) to tell the compiler we will get data in the future not in same second 

2 - we use (async) to tell the compiler this is not normal function is asynchronous 

3 - we use (await) to tell the compiler don't compile other lines of code until this line end of its operation
 
4 - we put the API's response in variable named response 

5 - we create jsonDate variable to convert data from respons to Map to easy to use and use keys 

6 - we create articles list to contain articles by jsonData("articles") that we add key to jsonData map 

7 - we create empty list articles named articleList to contain the instances of ArticleModel 

8 - we use Factory constructor in ArticleModel to convert the article form articles to ArticleModel by use the articles's keys (see ArticleModel section)

9 - in the end the getHeadLines() return articleList 

10 - note we use category variable to determine any category we want


## News Tile

### 1 - constructor accept ArticleModel

1 - accept AticleModel to convert it to News tile 

2 - put image , title and subtitle in column to handle their show 


## News List View Builder 

### 1 - initState()

1 - we create variable named future type Future<list<ArticleModel>> equal the list of ArticleModel by method getHeadLines() 'see getHeadlines section'

### 2 - FutureBuilder

1 - that widget use to return a widget that handle get News and loading and error and faciliate to build a widget use to show a list from API 

2 - FutureBuilder must initlize future parameter that accept the data that will shown 

3 - another parameter is builder that accept (context , snapshot) the snapshot can consider a container contain the data which came from future patameter 

4 - if the data happen in it any error or is loading , you will put the loading icon and error message in sliver box to adaptor to put in custom scroll 

5 -


