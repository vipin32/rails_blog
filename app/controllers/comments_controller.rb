class CommentsController < ApplicationController
    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params([:comment]).permit(:name, :comment))
    end

    def destroy

    end
end
