import {configureStore} from "@reduxjs/toolkit";
import authReducer from "./authSlice";
import userReducer from "./userSlide";

export const store = configureStore({
    reducer:{
        auth: authReducer,
        user: userReducer,
    },
});

