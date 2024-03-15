import React from 'react'

const BaseCard = ({team, name}) => {

  let card_style = {
    border:"2px solid skyblue",
    textAlign:"center",
    margin:"10px"
  }

  return (
    <div style={card_style}>
        <h3>{team}</h3>
        <p>{name}</p>
    </div>
  )
}

export default BaseCard