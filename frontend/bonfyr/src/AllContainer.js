import React from 'react'
import MapAll from './MapAll'

class AllContainer extends React.Component{
  state = {
    campgrounds: []
  }

  async componentDidMount() {
    try {
      const response = await fetch('http://localhost:3000/campgrounds/')
      const result = await response.json()
      this.setState({campgrounds: result})
    } catch (error) {
      console.log(error.message);
    }
  }

  render(){
    return(
      <div>
        <MapAll campgrounds={this.state.campgrounds}/>
      </div>
    )
  }
}

export default AllContainer
