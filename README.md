# SwiftNodeTemplate

A template of a one page iOS application that allows you to make HTTP calls to a server!

## Installation

Obviously, since XCode is necessary, this template only works on Mac.

```
brew upgrade
brew install carthage
```

Clone the repository.

```
cd SwiftNodeTemplate
carthage update
```

### Examples of HTTP calls

This template uses the [Alamofire](https://github.com/Alamofire/Alamofire) framework for HTTP calls and [SwiftyJSON](https://github.com/SwiftyJSON/SwiftyJSON) to parse JSON objects.

The following is an example of a post function that receives a JSON object.

```
Alamofire.request("http://localhost:80/login", method: .post, parameters: parameters, encoding: JSONEncoding.default).responseJSON { response in
        let json = JSON(response.result)
        let responseData = json["login"].stringValue
        print(responseData)
    }
}
```

You are all set!
