# Informant Senate API
This API was designed to serve up content to Informant [(deployed here)](https://us-informant.herokuapp.com/)
The API queries [ProPublica](https://www.propublica.org/datastore/api/propublica-congress-api) for the most up-to-date US Senate activity then cross searches [News API](https://newsapi.org/) to attach related news to each vote.

> The endpoints are __api/v1/votes__ & __api/v1/most_recent__
>
> `/most_recent` is used for the landing page and it returns a single object representing the most recent vote.
>
> `/votes` will return and array of Votes from the past 30 days
>
> They both return JSON objects:
```json
{
  articles: [ 
    {
      description: "Harvard Crimson 25 Harvard Law Profs Sign NYT Op-Ed Demanding Senate Reject Kavanaugh Harvard Crimson Roughly     two dozen Harvard Law School professors ...",
      id: 13,
      image_url: "https://s3.amazonaws.com/thumbnails.thecrimson.com/photos/2017/11/09/210252_1325882.jpg.635x426_q95_crop-   smart_upscale.jpg",
      source: "Thecrimson.com",
      title: "25 Harvard Law Profs Sign NYT Op-Ed Demanding Senate Reject Kavanaugh - Harvard Crimson",
      url: "https://www.thecrimson.com/article/2018/10/4/kavanaugh-nyt-oped/"
    }, 
    {…}, 
    {…}, 
  ],
  created_at: "10/08/2018",
  description: "Brett M. Kavanaugh, of Maryland, to be an Associate Justice of the Supreme Court of the United States",
  id: 19,
  number: "PN2259",
  question: "On the Nomination",
  result: "Nomination Confirmed",
  type_of: "nomination"
}
```

## The API employs a chron job in the background to check if new Votes have been added to the ProPublica API.

Currently it is still in testing phase and needs to be built out to provide more reliable news searches in the future.

## If you would like to deploy the API locally:
1. clone this repo
1. cd into the directory
1. `bundle update`
1. `rake db:{create,migrate}`
1. `rake:test` <- will grab 20 recent votes from ProPublica and append related news to them from News API.
1. navigate to [http://localhost:3000/api/v1/votes](http://localhost:3000/api/v1/votes)

#### Built with Ruby and Rails
#### Tested with RSpec
#### I used [Blueprinter](https://github.com/procore/blueprinter) to serialize data.
