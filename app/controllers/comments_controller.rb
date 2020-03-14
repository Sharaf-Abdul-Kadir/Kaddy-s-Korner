class CommentsController < ApplicationController

    def view_post
        @post = Post.find(params[:id])
        @comments = Comment.where(:post_id => @post.id)
        # redirect_to post_path(@post)  

        
    end
    
    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@post)
    end

    private def comment_params
        params.require(:comment).permit(:username, :body)
    end
    
end
