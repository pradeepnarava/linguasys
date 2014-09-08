class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index

   get_customer_details

    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @posts }
    end
  end


def get_customer_details
   p customers = Chargify::Customer.all
p customers.count

  # url = URI.parse('https://linguasys.chargify.com/subscriptions.xml')
 #post_args1 = { 'callmeasurement_xml_input' => '<?xml version="1.0" encoding="utf-16"?><callmeasurement username="username" password="12345" api="1" ><date><start>2013-02-01</start><end>2013-02-16</end></date></callmeasurement>' }
 #response, data = Net::HTTP.post_form(url, post_args1)



#uri = URI('https://linguasys.chargify.com/subscriptions.xml');
  
    
   

 #   params_xml = { :username => "kRn4EVV5ZlnI3EbvtO", :password => "x"}
 #  uri.query = URI.encode_www_form(params_xml)
   
  # res = Net::HTTP.get_response(uri)
   #res.use_ssl = true
    #res.verify_mode = OpenSSL::SSL::VERIFY_NONE
   #@doc=Nokogiri::XML(res.body) if res.is_a?(Net::HTTPSuccess)
   #logger.info @doc.to_xml
#p @doc.to_xml
#p "sssssssssssssssssssssssssssss"
#p send_xml
#@doc.remove_namespaces!

   
   #obj.order_number=(@doc.xpath("//ORDER_NUMBER/text()")).to_s
   #error=""
   #@doc.css("MESSAGE").each do |response_node|
    # error+=response_node["DESCRIPTION"]   
   #end
   #p "ccccccccccccccccccc"
   #@doc.css("MESSAGE").each do |response_node|
   #p response_node["CODE"]
    #    if response_node["CODE"] =="2"
     #  error=""
     #end
   #end
   #puts "errororororoor.......!"
   
     #p error.delete!("\n")
     #puts "hiiiiiiiiiiiiiii222222"
    # p error

   #  p error.empty?
   #puts "errororororoor.......!"
    
   #if error.empty? 
  #@productsku = @doc.at_xpath("/*/@id")
#root = @doc.root

  # logger.info "aaaaaaaaaaaaaaa.........!#{root.at_xpath("PRODUCTS")}-------------------------------------------------"
#items = root.xpath("PRODUCTS/PRODUCT")
#doc.xpath("//Keywords")
  
   #logger.info "aaaaaaaaaaaaaaa.........!#{items[1]}-------------------------------------------------"

   #logger.info "aaaaaaaaaaaaaaa.........!#{@doc.xpath("//PRODUCT")}-------------------------------------------------"

    #showcase =items[1].to_s.scan(/\d+/)
   
  #puts "Showcase........................!!#{showcase[1]}"
  #p showcase

end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = Post.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    @post = Post.new(params[:post])

    respond_to do |format|
      if @post.save
        format.html { redirect_to @post, notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
        format.html { render action: "new" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
