import image from '../assets/images/all-img/logo.png'
import {Link} from "react-router-dom"
const Image =()=>{
    return(
        <>
            <img src={image}/>
           <Link to="/home" >to home page</Link>
        </>
    )
}
export default Image