import React from 'react'
import Card from './Card'


const MapAll = props => {
   const campgrounds = props.campgrounds.map((campground, index) => {
    return <Card {...campground} key={Date.now()+ index}/>
  })
  return(
    <div>
      {campgrounds}
    </div>
  )
}

export default MapAll
