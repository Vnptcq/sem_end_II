document.getElementById('add-lesson').addEventListener('click', function() {
    const lessonsContainer = document.getElementById('lessons-container');
    const lessonForm = document.createElement('div');
    lessonForm.innerHTML = `
        <input type="text" placeholder="Tên lesson" required>
        <textarea placeholder="Mô tả lesson" required></textarea>
        <input type="text" placeholder="Link video" required>
    `;
    lessonsContainer.appendChild(lessonForm);
});