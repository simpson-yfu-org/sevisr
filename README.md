# Sevisr

This GEM is used to work with the US Department of U.S. Department of Homeland Security Immigration and Customs Enforcement Student and 
Exchange Visitor Program batch interface.  The company that employs me is a J1 High School Exchange program provider.  
Most of the testing is J1.   

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sevisr'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sevisr

## Usage

This gem only encapsulates the generation of the xml and posting and downloading batches.  
It is up to you to know enough about SEVIS to know what to send them.

###### Batch Upload
```ruby
create_list = [Sevisr::ExchangeVisitor.new ...]
batch = Sevisr::ExchangeVisitorBatch.new user_id: 'user', org_id: 'org', batch_id: 'batchid', create_list: create_list
client = Sevisr::Client.new url: Sevisr::Client.SEVIS_DEV, user: "user", pks12_path: "./cert.pks", pks12_password: "password"
result_file = File.new "result.xml" "w+"
hash = Sevisr::batch_upload()
```
Output
```ruby
{"TransactionLog"=>{"BatchHeader"=>{"BatchID"=>nil, "OrgID"=>"P-1-17332--AaB03x\rContent-Disposition: form-data; name=\"batchid\"\r\rbatch000088791--AaB03x\rContent-Disposition: form-data; name=\"userid\"\r\rjsimps1234"}, "BatchDetail"=>{"status"=>"false", "system"=>"PROD-SBT", "Upload"=>{"resultCode"=>"S0001", "dateTimeStamp"=>"2019-05-21T11:55:36.234-04:00"}}}}
```

###### Batch Download
This writes to a file only, since the call returns a zip file.

```ruby
client = Sevisr::Client.new url: Sevisr::Client.SEVIS_DEV, user: "user", pks12_path: "./cert.pks", pks12_password: "password"
file = File.new "batchresult.zip" "w+"
hash = Sevisr::batch_download(org_id: "org", batch_id: "batch", client: client, file: file)
file.close
puts hash
puts hash.dig("TransactionLog", "BatchDetail", "Download", "resultCode")

```
Output
```ruby
SEVISBatchCreateUpdateEV"=>{"xmlns:xsi"=>"http://www.w3.org/2001/XMLSchema-instance", "userID"=>"jsimps1234", "BatchHeader"=>{"BatchID"=>"00000000015371", "OrgID"=>"P-1-12345"}, "UpdateEV"=>{"ExchangeVisitor"=>{"requestID"=>"req24", "userID"=>"jsimps1234", "sevisID"=>"N0000000010", "UserDefinedA"=>nil, "UserDefinedB"=>nil, "Biographical"=>{"printForm"=>"true", "FullName"=>{"LastName"=>"Elsner", "FirstName"=>"Caroyln", "PassportName"=>"Caroyln Elsner",  ...

```
end

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

For testing create a config/test.yml file

```yaml
  SEVIS_USER: user
  SEVIS_PKS12_PATH: path
  SEVIS_PKS12_PASSWORD: PK12 password
  SEVIS_ORG: Org
  SEVIS_PK_PASSWORD: Primary key password.
```

Testing is done against the Sevis Beta website.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/jeffreyindc/sevisr. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [GNU LGPLv3](https://opensource.org/licenses/LGPL-3.0).

## Code of Conduct

Everyone interacting in the Sevisr project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/sevisr/blob/master/CODE_OF_CONDUCT.md).
