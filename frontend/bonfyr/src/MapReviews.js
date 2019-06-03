import React from 'react'
import Review from './Review'

const MapReviews = props => {
  const reviews = props.reviews.map((review, index) => {
    return <Review {...review} key={Date.now() + index}/>
  })
  return(
    <div>
      {reviews}
    </div>
  )
}

export default MapReviews
