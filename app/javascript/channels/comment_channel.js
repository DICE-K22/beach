import consumer from "./consumer"

consumer.subscriptions.create("CommentChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    const html = `<p class="comment-area">
      <span>${data.user}:</span>
      <span class="comment-left">
        <span class="comment">${data.content.comment}</span>
      </span>  
      <span class="comment-right">${data.time}</span>
    </p>`

    
    const comments = document.getElementById('comments');
    const newComment = document.getElementById('comment_comment');
    comments.insertAdjacentHTML('afterbegin', html);
    comments.insertAd
    newComment.value='';
  }
});
