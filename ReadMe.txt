
1. Frameworks used:
    Alamofire for network calls
    SDWebImage for image downloading&caching

2. Created two targets for Simsons, Wire
    under each target we have 3 configurations for dev,release,staging
    we can set different package name, display name for each target
    we can also set properties in the individual plist files with
    configuration properties from each combination like WireStaging,WireRelease

3. created Configurations folder with different configuration for each target with configuration combination.

4. created models using Codable(swift 4) from json responses.




