class PostsController < ApplicationController
   require 'net/http'
   require "uri"
   require 'rest_client'
   require 'json'
  # GET /posts
  # GET /posts.json
  def index
   # @id="/users/156378"
#p server_url ="https://linguasysnlp.management.azure-api.net"+"#{@id}"+"?api-version=2014-02-14-preview"

 #  response = RestClient::Request.execute(:method => :delete, :url => server_url,:headers => {'Authorization' => 'SharedAccessSignature uid=53f87f4f59d75b019b030003&ex=2015-09-05T12:54:00.0000000Z&sn=+lVygmZSxG++8/Qyg8NtrR/SrVtr42rG+lnf049Dec6iGMzEVKM1WjPJ/jh7/r3k3fWFIBsU5JaqZ6K8OPzJjw==',:content_type => :json})

#p response.body
    #@posts = Post.all

    #respond_to do |format|
     # format.html # index.html.erb
     # format.json { render json: @posts }
    #end
  end


def webhooks
    #################################
puts "fdfd...!"
#p params={"id"=>"24258783432", "event"=>"signup_success", "payload"=>{"subscription"=>{"activated_at"=>"2014-09-08 14:09:53 -0400", "balance_in_cents"=>"9900", "cancel_at_end_of_period"=>"false", "canceled_at"=>"", "cancellation_message"=>"", "created_at"=>"2014-09-08 14:09:51 -0400", "current_period_ends_at"=>"2014-10-08 14:09:51 -0400", "expires_at"=>"", "id"=>"643154353", "next_assessment_at"=>"2014-10-08 14:09:51 -0400", "payment_collection_method"=>"automatic", "state"=>"active", "trial_ended_at"=>"", "trial_started_at"=>"", "updated_at"=>"2014-09-08 14:09:53 -0400", "current_period_started_at"=>"2014-09-08 14:09:51 -0400", "previous_state"=>"active", "signup_payment_id"=>"67808751", "signup_revenue"=>"99.00", "delayed_cancel_at"=>"", "coupon_code"=>"", "total_revenue_in_cents"=>"0", "product_price_in_cents"=>"9900", "product_version_number"=>"1", "payment_type"=>"credit_card", 
 # "customer"=>{"address"=>"", "address_2"=>"", "city"=>"", "country"=>"", "created_at"=>"2014-09-08 14:09:51 -0400", "email"=>"abcdefgh@gmail.com", "first_name"=>"ffdfdfdname", "id"=>"62954341", "last_name"=>"lnagfgfme", "organization"=>"", "phone"=>"", "portal_customer_created_at"=>"", "portal_invite_last_accepted_at"=>"", "portal_invite_last_sent_at"=>"", "reference"=>"", "state"=>"", "updated_at"=>"2014-09-08 14:09:51 -0400", "verified"=>"false", "zip"=>""}, "product"=>{"accounting_code"=>"", "archived_at"=>"", "created_at"=>"2014-08-31 11:53:32 -0400", "description"=>"Use unlimited calls per minute, and up to 5,000 calls per week to get your coolest applications through the QA phase and ready for production.", "expiration_interval"=>"", "expiration_interval_unit"=>"never", "handle"=>"nlp-for-developers", "id"=>"3536586", "initial_charge_in_cents"=>"", "interval"=>"1", "interval_unit"=>"month", "name"=>"NLP for Developers", "price_in_cents"=>"9900", "request_credit_card"=>"true", "require_credit_card"=>"true", "return_params"=>"", "return_url"=>"", "taxable"=>"false", "trial_interval"=>"", "trial_interval_unit"=>"month", "trial_price_in_cents"=>"", "update_return_url"=>"", "updated_at"=>"2014-09-01 14:04:29 -0400", "product_family"=>{"accounting_code"=>"", "description"=>"A powerhouse of NLP APIs that work across 18 languages.  English, Arabic, Chinese, German, French, Hebrew, Indonesian, Japanese, Korean, Malay, Spanish, Pashto, Persian, Portuguese, Russian, Thai, Vietnamese, Urdu", "handle"=>"linguasysnlp", "id"=>"439171", "name"=>"LinguaSysNLP"}}, "credit_card"=>{"billing_address"=>"123 any st", "billing_address_2"=>"", "billing_city"=>"123 any city", "billing_country"=>"US", "billing_state"=>"CA", "billing_zip"=>"55555", "card_type"=>"bogus", "current_vault"=>"bogus", "customer_id"=>"6294344", "customer_vault_token"=>"", "expiration_month"=>"8", "expiration_year"=>"2016", "first_name"=>"John", "id"=>"4075023", "last_name"=>"Smith", "masked_card_number"=>"XXXX-XXXX-XXXX-1", "vault_token"=>"1", "payment_type"=>"credit_card"}}, "site"=>{"id"=>"23015", "subdomain"=>"linguasys"}}, "action"=>"webhooks", "controller"=>"skews"}
puts "fdfd...!"
@subscription_id= params["id"]
p @id=params["payload"]["subscription"]["customer"]["id"]
#p @id="11113789"

p @email=params["payload"]["subscription"]["customer"]["email"]
#p @email="p1wq12w@gmail.com"

p @last_name=params["payload"]["subscription"]["customer"]["last_name"]
p @first_name=params["payload"]["subscription"]["customer"]["first_name"]
#p @first_name="w1q132wqwrrw"
#p @last_name="y1ty132tyewtty"
p @sub_name=params["payload"]["subscription"]["product"]["name"]

puts "user creation code...!"
p @id
p server_url ="https://linguasysnlp.management.azure-api.net/users/"+"#{@id}"+"?api-version=2014-02-14-preview"
p post_params = "{'firstName': "+"'#{@first_name}'"+",'lastName': "+"'#{@last_name}'"+",'email': "+"'#{@email}'"+",'password': 'linguasys','state':"+" 'active','note': 'Linguasys'"+"}"

response = RestClient::Request.execute(:method => :put, :url => server_url, :payload => post_params,:headers => {'Authorization' => 'SharedAccessSignature uid=53f87f4f59d75b019b030003&ex=2015-09-05T12:54:00.0000000Z&sn=+lVygmZSxG++8/Qyg8NtrR/SrVtr42rG+lnf049Dec6iGMzEVKM1WjPJ/jh7/r3k3fWFIBsU5JaqZ6K8OPzJjw==',:content_type => :json})

p response.code
puts "user creation code...!"

#########finding product#########
puts "adding subscription,checking products and getting product ids.....!"
products_url ='https://linguasysnlp.management.azure-api.net/products?api-version=2014-02-14-preview'

response = RestClient::Request.execute(:method => :get, :url => products_url,:headers => {'Authorization' => 'SharedAccessSignature uid=53f87f4f59d75b019b030003&ex=2015-09-05T12:54:00.0000000Z&sn=+lVygmZSxG++8/Qyg8NtrR/SrVtr42rG+lnf049Dec6iGMzEVKM1WjPJ/jh7/r3k3fWFIBsU5JaqZ6K8OPzJjw==',:content_type => :json})


#p response.body
@doc=Nokogiri::XML(response.body)

 p body = JSON.parse(response.body)
body["value"].each do |f|
  if @sub_name==f["name"]

@product_id = f["id"]
puts "gotttttttt productid..............!"
p @product_id
puts "gotttttttttt productid..............!"
end

 
end
#########finding product#########

########subscribing########
puts "subscribing.....!"
p subscription_url ="https://linguasysnlp.management.azure-api.net/subscriptions/"+"#{@subscription_id}"+"?api-version=2014-02-14-preview"
p post_params_for_subscription = "{'userId': '/users/#{@id}','productId': '#{@product_id}','state': 'active'}"
response_sub = RestClient::Request.execute(:method => :put, :url => subscription_url, :payload => post_params_for_subscription,:headers => {'Authorization' => 'SharedAccessSignature uid=53f87f4f59d75b019b030003&ex=2015-09-05T12:54:00.0000000Z&sn=+lVygmZSxG++8/Qyg8NtrR/SrVtr42rG+lnf049Dec6iGMzEVKM1WjPJ/jh7/r3k3fWFIBsU5JaqZ6K8OPzJjw==',:content_type => :json})
p response.code
puts "subscribing.....!"
##########################
   end


   

  # GET /posts/1
  # GET /posts/1.json
  def show
    #@post = Post.find(params[:id])

    #respond_to do |format|
     # format.html # show.html.erb
      #format.json { render json: @post }
    #end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    #@post = Post.new

    #respond_to do |format|
     # format.html # new.html.erb
      #format.json { render json: @post }
    #end
  end

  # GET /posts/1/edit
  def edit
    #@post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    #@post = Post.new(params[:post])

    #respond_to do |format|
     # if @post.save
      #  format.html { redirect_to @post, notice: 'Post was successfully created.' }
       # format.json { render json: @post, status: :created, location: @post }
      #else
       # format.html { render action: "new" }
        #format.json { render json: @post.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    #@post = Post.find(params[:id])

    #respond_to do |format|
     # if @post.update_attributes(params[:post])
      #  format.html { redirect_to @post, notice: 'Post was successfully updated.' }
       # format.json { head :no_content }
      #else
       # format.html { render action: "edit" }
       # format.json { render json: @post.errors, status: :unprocessable_entity }
      #end
    #end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
   # @post = Post.find(params[:id])
    #@post.destroy

    #respond_to do |format|
     # format.html { redirect_to posts_url }
      #format.json { head :no_content }
    #end
  end
end
