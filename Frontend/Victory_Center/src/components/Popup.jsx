import "../assets/css/Popup.css";
import React from "react";
function Popup({ title, message, onClose }) {
    return (
      <div>
        <div className="popup-overlay" onClick={onClose}></div>
        <div className="popup">
          <h3>{title}</h3>
          <p>{message}</p>
          <button onClick={onClose}>Close</button>
        </div>
      </div>
    );
  }
  
  export default Popup;
