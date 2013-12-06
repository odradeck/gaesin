class CommentsController < ApplicationController
  load_and_authorize_resource

  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    if @comment.commentable_type == 'Post'  
      redirect_to board_post_path(@comment.commentable.board, @comment.commentable)
    elsif @comment.commentable_type == 'Question'
      redirect_to @comment.commentable
    else
      redirect_to root_path
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
    @comment = Comment.new(params[:comment])
    @comment.user = current_user
    @comment.save

    if @comment.commentable_type == 'Post'  
      redirect_to board_post_path(@comment.commentable.board, @comment.commentable)
    elsif @comment.commentable_type == 'Question'
      redirect_to @comment.commentable
    else
      redirect_to root_path
    end

    


    # respond_to do |format|
    #   if @comment.save
    #     format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
    #     format.json { render json: @comment, status: :created, location: @comment }
    #     format.js
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @comment.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment = Comment.find(params[:id])
    @commentable = @comment.commentable
    @comment.destroy

    if @commentable.class.name == 'Post'  
      redirect_to board_post_path(@commentable.board, @commentable)
    elsif @commentable.class.name == 'Question'
      redirect_to @commentable
    else
      redirect_to root_path
    end
   

    # respond_to do |format|
    #   format.html { redirect_to comments_url }
    #   format.json { head :no_content }
    # end
  end
end
