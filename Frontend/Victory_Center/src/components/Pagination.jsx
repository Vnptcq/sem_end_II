import React from "react";
import "../assets/css/Pagination.css";
import AllCourse from "./AllCourse";

const Pagination = ({ currentPage, totalPages, onPageChange }) => {
  const handlePrevious = () => {
    if (currentPage > 0) {

      onPageChange(currentPage - 1);
    }
  };

  const handleNext = () => {
    if (currentPage < totalPages) {

      onPageChange(currentPage + 1);
    }
  };

  return (
    <div style={{ display: "flex", justifyContent: "center", gap: "0.5rem" }}>
      <button
        onClick={()=>{

            handlePrevious();
        }}
        disabled={currentPage === 0}
        style={{
          padding: "8px 12px",
          border: "1px solid #ddd",
          borderRadius: "6px",
          cursor: currentPage === 0 ? "not-allowed" : "pointer",
        }}
      >
        &lt; Prev
      </button>
      {Array.from({ length: totalPages }, (_, i) => (
        <button
          key={i}
          onClick={() => {onPageChange(i);

                    } }
          style={{
            padding: "8px 12px",
            border: "1px solid #ddd",
            borderRadius: "6px",
            backgroundColor: currentPage === i ? "#007bff" : "#fff",
            color: currentPage === i  ? "#fff" : "#000",
            cursor: "pointer",
          }}
        >
          {i+1}
        </button>
      ))}
      <button
        onClick={()=>{

            handleNext();
        }}
        disabled={currentPage+1 === totalPages}
        style={{
          padding: "8px 12px",
          border: "1px solid #ddd",
          borderRadius: "6px",
          cursor: currentPage+1 === totalPages ? "not-allowed" : "pointer",
        }}
      >
        Next &gt;
      </button>
    </div>
  );
};

export default Pagination;
