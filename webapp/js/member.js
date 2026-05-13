function showComponent(el, tabName) {
    document.querySelectorAll('.tab').forEach(t => t.classList.remove('active'));
    document.querySelectorAll('.tab-content').forEach(c => c.classList.remove('active'));
    el.classList.add('active');
    const target = document.getElementById(tabName);
    if (target) target.classList.add('active');
}

function showLessonTab(el, tabName) {
    document.querySelectorAll('.post-tab').forEach(t => t.classList.remove('active'));
    document.querySelectorAll('.lesson-tab-content').forEach(c => c.classList.remove('active'));
    el.classList.add('active');
    const target = document.getElementById('lesson-' + tabName);
    if (target) target.classList.add('active');
}

/* Profile TABS (Profile.jsp) */
function showTaskTab(el, tabName) {
    document.querySelectorAll('.post-tab').forEach(t => t.classList.remove('active'));
    document.querySelectorAll('.profile-tab-content').forEach(c => c.classList.remove('active'));
    el.classList.add('active');
    const target = document.getElementById('task-' + tabName);
    if (target) target.classList.add('active');
}