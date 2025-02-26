import { createSlice } from "@reduxjs/toolkit";

const initialState = {
    login: {
        token: null,
        isFetching: false,
        error: false,
        errorMessage: "",
    },
    signup: {
        isFetching: false,
        error: false,
        success: false,
        errorMessage: "",
    }
};
const authSlice = createSlice({
    name: "auth",
    initialState: {
        login: {
            token: null,
            isFetching: false,
            error: false,
            errorMessage: "",
        },
        signup: {
            isFetching: false,
            error: false,
            success: false,
            errorMessage: "",
        }
    },
    reducers: {
        loginStart: (state) => {
            state.login.isFetching = true;
            state.login.errorMessage = "";
        },
        loginSuccess: (state, action) => {
            state.login.isFetching = false;
            state.login.token = action.payload;
            state.login.error = false;
            state.login.errorMessage = "";

        },
        loginFailed: (state) => {
            state.login.isFetching = false;
            state.login.error = true;
            state.login.errorMessage = action.payload || "Login failed";
        },
        signupStart: (state) => {
            state.signup.isFetching = true;
            state.signup.errorMessage = "";
        },
        signupSuccess: (state) => {
            state.signup.isFetching = false;
            state.signup.success = true;
            state.signup.error = false;
            state.signup.errorMessage = "";
        },
        signupFailed: (state) => {
            state.signup.isFetching = false;
            state.signup.error = true;
            state.signup.success = false;
            state.login.errorMessage = action.payload || "Sign up failed";
        },
        logout: () => {
            return initialState; // Trả về initialState
        },
        
    }
});

export const {
    loginStart,
    loginFailed,
    loginSuccess,
    signupStart,
    signupFailed,
    signupSuccess,
    logout,
} = authSlice.actions;

export default authSlice.reducer;