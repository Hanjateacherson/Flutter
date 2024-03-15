import React, {useState} from 'react'
import memberList from './data/members.json'

const Ex01 = () => {

  const [members, setMembers] = useState(memberList);

  return (
    <div>
        {members.map((member)=>(
            <p key={member.id}>
                <span>이름:{member.name}</span>
                <br></br>
                <span>업무:{member.task}</span>
            </p>
        ))}
    </div>
  )
}

export default Ex01