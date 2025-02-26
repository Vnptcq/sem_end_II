import axios from "axios";
import { loginStart, loginSuccess,loginFailed, signupStart, signupFailed, signupSuccess } from "./authSlice";
import { getUserFailed, getUserStart, getUserSuccess } from "./userSlide";
import { getCartStart, getCartFailed, getCartSuccess } from "./cartSlide";

export const loginUser = async(user,dispatch,navigate)=>{
    dispatch(loginStart());
    try{
        const res= await axios.post("http://localhost:8080/auth/generateToken",user);
        dispatch(loginSuccess(res.data));
        localStorage.setItem("jwt_token", res.data);
        
        navigate("/");
    }catch(err){
        const errorMessage = err.response ? err.response.data.message : "Login failed";
        dispatch(loginFailed(errorMessage));
    }
};

export const signupUser = async (user,dispatch,navigate)=>{
    dispatch(signupStart());
    try{
        await axios.post("http://localhost:8080/auth/addNewUser",user);
        dispatch(signupSuccess());
        navigate("/login");
    }catch(err){
        const errorMessage = err.response ? err.response.data.message : "Sign up failed";
        dispatch(signupFailed(errorMessage));
    }
};

export const getUser = async (TOKEN, dispatch) => {
    dispatch(getUserStart());
    try {
        const headers = {
            Authorization: `Bearer ${TOKEN}`
        };
        const res = await axios.get("http://localhost:8080/auth/user/userProfile", { headers });

        dispatch(getUserSuccess(res.data));
    } catch (err) {
        console.error("Error fetching user:", err);
        dispatch(getUserFailed());
    }
};
export const getCart = async (TOKEN, dispatch) => {
    dispatch(getCartStart());
    try {
        const headers = {
            Authorization: `Bearer ${TOKEN}`
        };
        const res = await axios.get("http://localhost:8080/cart/cartList", { headers });
        dispatch(getCartSuccess(res.data));
    } catch (err) {
        console.error("Error fetching user:", err);
        dispatch(getCartFailed());
    }
};
export const deleteCartItem = async (itemId, TOKEN) => {
    try {
        const headers = {
            Authorization: `Bearer ${TOKEN}`
        };
        const response = await axios.delete(`http://localhost:8080/cart/deleteItem/${itemId}`, { headers});

        return response.data; // Return the response if needed
    } catch (error) {
        throw new Error(error.response.data.message || "Failed to delete item");
    }
};
export const addCartItem = async (courseIds, TOKEN) => {
    try {
        const headers = {
            Authorization: `Bearer ${TOKEN}`,

        };
        const response = await axios.post(`http://localhost:8080/cart/addCourse`,{courseIds}, { headers});
        console.log("Adding course with ID:", courseIds);
        console.log("Token:", TOKEN); 

        return response.data; // Return the response if needed
    } catch (error) {
        throw new Error(error.response.data.message || "Failed to delete item");
    }
};


