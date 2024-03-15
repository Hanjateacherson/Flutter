import React from 'react'

const Comment = ({writer, comment}) => {

  const style = {
    container:{
        display:"flex",
        border:"1px solid gray",
        margin:"10px",
        padding:"10px",
        borderRadius:"10px"
    },
    img:{
        width:50,
        height:50
    },
    content:{
        display:"flex",
        flexDirection:"column",
        justifyContent:"center",
        marginLeft:"10px"
    }
  }

  return (
    <div style={style.container}>
        <div>
            <img
            style={style.img}
            src="https://cdn-icons-png.flaticon.com/512/149/149071.png"
            alt="이미지 없음"/>
        </div>
        <div style={style.content}>
            <span>{writer}</span>
            <span>{comment}</span>
        </div>
    </div>
  )
}

export default Comment