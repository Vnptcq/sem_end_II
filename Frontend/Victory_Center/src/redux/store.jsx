import {configureStore} from "@reduxjs/toolkit";
import authReducer from "./authSlice";
import userReducer from "./userSlide";
import cartReducer from "./cartSlide";

export const store = configureStore({
    reducer:{
        auth: authReducer,
        user: userReducer,
        cart: cartReducer,
    },
});

