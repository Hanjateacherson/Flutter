import React from 'react'
import Comment from './Comment'

const CommentList = () => {
  return (
    <div>
        <h1>댓글목록</h1>

        <div>
            <Comment writer="행인1" comment="React 두 번째 수업시간입니다!"/>
            <Comment/>
            <Comment/>
            <Comment/>
        </div>
    </div>
  )
}

export default CommentList