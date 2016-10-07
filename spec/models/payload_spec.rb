require_relative '../spec_helper'

RSpec.describe "Payload" do

  it "is valid with everything" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to be_valid
  end

  it "is invalid without a url_id" do
    payload = Payload.new(requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without requested_at" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without responded_in" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without referred_by_id" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without request_type" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without event_name_id" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without user_agent_id" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          resolution_id: 1280,
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without resolution_id" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: "GET",
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          ip_id:"63.29.38.211")

    expect(payload).to_not be_valid
  end

  it "is invalid without ip_id" do
    payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                          requested_at: "2013-02-16 21:38:28 -0700",
                          responded_in: 37,
                          referred_by_id: "http://jumpstartlab.com",
                          request_type_id: 1,
                          event_name_id: "socialLogin",
                          user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                          resolution_id: 1280)

    expect(payload).to_not be_valid
  end

  describe ".request_type" do

    it "payload is associated with request type" do
      RequestType.create(request_type: "GET")
      payload = Payload.new(url_id: "http://jumpstartlab.com/blog",
                            requested_at: "2013-02-16 21:38:28 -0700",
                            responded_in: 37,
                            referred_by_id: "http://jumpstartlab.com",
                            request_type_id: 1,
                            event_name_id: "socialLogin",
                            user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                            resolution_id: 1280,
                            ip_id:"63.29.38.211")

      expect(payload.request_type.request_type).to eq("GET")
    end
  end
  
  describe ".url" do
    it "associates a url with a payload" do
      Url.create(url: "http://beesbeesbees.com")
      payload = Payload.new(url_id: 1,
                            requested_at: "2013-02-16 21:38:28 -0700",
                            responded_in: 37,
                            referred_by_id: "http://jumpstartlab.com",
                            request_type_id: 1,
                            event_name_id: "socialLogin",
                            user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                            resolution_id: 1280,
                            ip_id:"63.29.38.211")

      expect(payload.url.url).to eq("http://beesbeesbees.com")
    end  
  end
  
  describe ".referred_by" do
    it "associates referred_by with a payload" do
      ReferredBy.create(referred_by: "http://beesbeesbees.com")
      payload = Payload.new(url_id: 1,
                            requested_at: "2013-02-16 21:38:28 -0700",
                            responded_in: 37,
                            referred_by_id: 1,
                            request_type_id: 1,
                            event_name_id: "socialLogin",
                            user_agent_id: "Mozilla/5.0 (Macintosh%3B Intel Mac OS X 10_8_2) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1309.0 Safari/537.17",
                            resolution_id: 1280,
                            ip_id:"63.29.38.211")

      expect(payload.referred_by.referred_by).to eq("http://beesbeesbees.com")
    end
  end
  
end
