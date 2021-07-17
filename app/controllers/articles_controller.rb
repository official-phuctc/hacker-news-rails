require 'net/http'
require 'uri'
require 'json'

class ArticlesController < ApplicationController
  # GET /articles
  def index
    # client = Graphlient::Client.new('https://iwa-test.herokuapp.com/graphql',
    #   headers: {
    #     'Authorization' => 'Bearer 123'
    #   },
    #   http_options: {
    #     read_timeout: 20,
    #     write_timeout: 30
    #   }
    # )
    # response = client.query <<~GRAPHQL
    #   query {
    #     articles {
    #       content
    #       coverImageUrl
    #       description
    #       subtitle
    #       title
    #       url
    #     }
    #   }
    # GRAPHQL

    # @articles = response.data

    @articles = '{
      "data": {
          "articles": [
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "2470 points by homarp 1 day ago  | 1554 comments",
                  "subtitle": "steamdeck.com",
                  "title": "Valve Steam Deck",
                  "url": "https://www.steamdeck.com/en/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "2006 points by karterk 2 days ago  | 569 comments",
                  "subtitle": "typesense.org",
                  "title": "The unreasonable effectiveness of just showing up everyday",
                  "url": "https://typesense.org/blog/the-unreasonable-effectiveness-of-just-showing-up-everyday/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "1167 points by temp8964 18 hours ago  | 1239 comments",
                  "subtitle": "support.google.com",
                  "title": "Google Drive bans distribution of âmisleading contentâ",
                  "url": "https://support.google.com/docs/answer/148505#zippy=%2Cmisleading-content"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "807 points by kurthr 1 day ago  | 162 comments",
                  "subtitle": "alexanderpiano.nz",
                  "title": "The Alexander: Why did you build such a long piano?",
                  "url": "https://www.alexanderpiano.nz/page/the-alexander-piano"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "583 points by hi5eyes 1 day ago  | 165 comments",
                  "subtitle": "reuters.com",
                  "title": "Intel in talks to buy GlobalFoundries for about $30B",
                  "url": "https://www.reuters.com/business/intel-talks-buy-globalfoundries-about-30-billion-wsj-2021-07-15/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "566 points by sohkamyung 21 hours ago  | 208 comments",
                  "subtitle": "sciencemag.org",
                  "title": "Hubble telescope has new lease on life after computer swap appears to fix glitch",
                  "url": "https://www.sciencemag.org/news/2021/07/hubble-back-famed-space-telescope-has-new-lease-life-after-computer-swap-appears-fix"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "540 points by hmmx3 1 day ago  | 235 comments",
                  "subtitle": "openinsulin.org",
                  "title": "Open Insulin Foundation",
                  "url": "https://openinsulin.org/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "524 points by matejmecka 1 day ago  | 154 comments",
                  "subtitle": "github.com/deepmind",
                  "title": "Alphafold",
                  "url": "https://github.com/deepmind/alphafold"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "515 points by popitter 2 days ago  | 89 comments",
                  "subtitle": "github.com/diekmann",
                  "title": "WebAssembly from Scratch: From FizzBuzz to DooM",
                  "url": "https://github.com/diekmann/wasm-fizzbuzz"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "496 points by goodway 17 hours ago  | 194 comments",
                  "subtitle": "calebkruse.com",
                  "title": "Why were blind to the color blue",
                  "url": "https://calebkruse.com/10-projects/seeing-blue/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "488 points by sbuttgereit 2 days ago  | 452 comments",
                  "subtitle": "mediaite.com",
                  "title": "Germany fines YouTube for removing video of anti-lockdown protest",
                  "url": "https://www.mediaite.com/news/germany-fines-youtube-six-figures-for-removing-video-of-anti-lockdown-protest/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "483 points by null_object 2 days ago  | 303 comments",
                  "subtitle": "twitter.com/ummjackson",
                  "title": "I am often asked if I will âreturn to cryptocurrencyâ",
                  "url": "https://twitter.com/ummjackson/status/1415353984617914370"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "475 points by jseliger 20 hours ago  | 314 comments",
                  "subtitle": "slowboring.com",
                  "title": "The case for banning non-competes",
                  "url": "https://www.slowboring.com/p/the-case-for-banning-non-competes"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "472 points by nvahalik 2 days ago  | 170 comments",
                  "subtitle": "google.com",
                  "title": "The Well-Tempered Traveler",
                  "url": "https://www.google.com/welltemperedtraveler/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "469 points by theafh 1 day ago  | 295 comments",
                  "subtitle": "quantamagazine.org",
                  "title": "How many real numbers exist? New proof moves closer to an answer",
                  "url": "https://www.quantamagazine.org/how-many-numbers-exist-infinity-proof-moves-math-closer-to-an-answer-20210715/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "466 points by danso 1 day ago  | 180 comments",
                  "subtitle": "mattstoller.substack.com",
                  "title": "Soldiers speak out about being blocked from repairing equipment by contractors",
                  "url": "https://mattstoller.substack.com/p/a-real-s-show-soldiers-angrily-speak"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "409 points by pseudolus 23 hours ago  | 279 comments",
                  "subtitle": "npr.org",
                  "title": "Illinois first state to tell police they cant lie to minors in interrogations",
                  "url": "https://www.npr.org/2021/07/16/1016710927/illinois-is-the-first-state-to-tell-police-they-cant-lie-to-minors-in-interrogat"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "408 points by yamrzou 2 days ago  | 664 comments",
                  "subtitle": "theatlantic.com",
                  "title": "A shift in American family values is fueling estrangement",
                  "url": "https://www.theatlantic.com/family/archive/2021/01/why-parents-and-kids-get-estranged/617612/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "367 points by mattyb 2 days ago  | 294 comments",
                  "subtitle": "blog.twitter.com",
                  "title": "Goodbye, Fleets",
                  "url": "https://blog.twitter.com/en_us/topics/product/2021/goodbye-fleets"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "355 points by 1vuio0pswjnm7 2 days ago  | 597 comments",
                  "subtitle": "bloomberg.com",
                  "title": "Facebook users said no to tracking, and now advertisers are panicking",
                  "url": "https://www.bloomberg.com/news/articles/2021-07-14/facebook-fb-advertisers-impacted-by-apple-aapl-privacy-ios-14-changes"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "339 points by defect 2 days ago  | 69 comments",
                  "subtitle": "google.github.io",
                  "title": "CVE-2021-22555: Turning  into 10000$",
                  "url": "https://google.github.io/security-research/pocs/linux/cve-2021-22555/writeup.html"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "337 points by danso 2 days ago  | 231 comments",
                  "subtitle": "polygon.com",
                  "title": "Sega sued for âriggedâ arcade machine",
                  "url": "https://www.polygon.com/22573590/sega-key-master-arcade-game-class-action-lawsuit"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "334 points by uVacCXNiiJCTnYB 2 days ago  | 216 comments",
                  "subtitle": "",
                  "title": "Ask HN: Recruiters want people who do side projects, yet contracts forbid them?",
                  "url": "item?id=27843198"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "334 points by keehun 2 days ago  | 101 comments",
                  "subtitle": "helftone.com",
                  "title": "Monodraw: ASCII art editor for the Mac",
                  "url": "https://monodraw.helftone.com/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "323 points by arkadiyt 1 day ago  | 99 comments",
                  "subtitle": "ryotak.me",
                  "title": "Remote code execution in cdnjs of Cloudflare",
                  "url": "https://blog.ryotak.me/post/cdnjs-remote-code-execution-en/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "320 points by xkriva11 2 days ago  | 222 comments",
                  "subtitle": "pharo.org",
                  "title": "Pharo 9",
                  "url": "https://pharo.org/news/pharo9-released.html"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "317 points by karimf 2 days ago  | 83 comments",
                  "subtitle": "sqlbolt.com",
                  "title": "SQLBolt â Interactive lessons and exercises to learn SQL",
                  "url": "https://sqlbolt.com/"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "310 points by dlevine 1 day ago  | 484 comments",
                  "subtitle": "dana11235.medium.com",
                  "title": "My take on the study from MIT that predicts âsocietal collapseâ",
                  "url": "https://dana11235.medium.com/my-take-on-the-study-from-mit-that-predicts-societal-collapse-b351d8fbd4c2"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "309 points by TeMPOraL 2 days ago  | 284 comments",
                  "subtitle": "mashable.com",
                  "title": "Google engineer who criticized company in viral comics on why he finally quit",
                  "url": "https://mashable.com/article/google-engineer-manu-cornet-comics-critique"
              },
              {
                  "content": null,
                  "coverImageUrl": null,
                  "description": "305 points by basisword 12 hours ago  | 102 comments",
                  "subtitle": "9to5mac.com",
                  "title": "Apple removes âFakespotâ app from iOS App Store following Amazon request",
                  "url": "https://9to5mac.com/2021/07/16/apple-removes-fakespot-app-from-ios-app-store-following-amazon-request/"
              }
          ]
      },
      "casted_data": {},
      "errors": []
    }'

    render json: @articles
  end
end
