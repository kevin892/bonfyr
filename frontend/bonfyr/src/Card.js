import React from 'react'
import Modal from 'react-modal'
import MapReviews from './MapReviews'

class Card extends React.Component {
  state = {
      modalIsOpen: false
    }

  openModal = () =>{
    this.setState({modalIsOpen: true});
  }

  closeModal = () =>{
    this.setState({modalIsOpen: false});
  }

  render() {
    return (
      <div>
        <button onClick={this.openModal}>{this.props.name}</button>
        <Modal
          isOpen={this.state.modalIsOpen}
          onAfterOpen={this.afterOpenModal}
          onRequestClose={this.closeModal}
        >


          <button onClick={this.closeModal}>Back</button>
            <h2>{this.props.name}</h2>
          <p>{this.props.national_park}</p>
          <p>{this.props.total_sites}</p>
          <p>{this.props.address}</p>
          <p>{this.props.dates_open}</p>
          <p>{this.props.directions}</p>
          <p>{this.props.contact_info}</p>
          <p>{this.props.description}</p>
          <MapReviews reviews={this.props.reviews}/>
        </Modal>
      </div>
    )
  }
}



export default Card
