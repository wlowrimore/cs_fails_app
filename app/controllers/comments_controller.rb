class CommentsController < ApplicationController

    http_basic_authenticate_with name: "William", password: "MayaRiver15",
    only: :destroy
    
    def create
        @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
    end

    def destroy
        @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article), status: 303
    end

    # -------------------------------
    #         PRIVATE PARTS
    # -------------------------------

    private
        def comment_params
            params.require(:comment).permit(:commenter, :body, :status)
        end
end
