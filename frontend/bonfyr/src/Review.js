import React from 'react'

const Review = props => {
  return(
<div>
  <hr/>
<h3>{props.user_id}</h3>
<p>{props.review_content}</p>
<p>{props.rating}</p>
<p>{props.picture}</p>

</div>
  )
}

export default Review
