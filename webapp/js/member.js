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

/* Enrolment TABS (my-enrolments.jsp) */
function showEnrolTab(el, tabName) {
    document.querySelectorAll('.post-tab').forEach(t => t.classList.remove('active'));
    document.querySelectorAll('.enrol-tab-content').forEach(c => c.classList.remove('active'));
    el.classList.add('active');
    const target = document.getElementById('enrol-' + tabName);
    if (target) target.classList.add('active');
}

/* Community Filter TABS (browse-communities.jsp) */
function setTab(el, category) {
    document.querySelectorAll('.filter-tab').forEach(t => t.classList.remove('active'));
    el.classList.add('active');
    filterCommunities(category);
}

/* Community Search + Filter */
function filterCommunities(category) {
    const searchInput = document.getElementById('communitySearch');
    const query = searchInput ? searchInput.value.toLowerCase() : '';
    const activeTab = document.querySelector('.filter-tab.active');
    const cat = category || (activeTab ? activeTab.dataset.cat : 'all');

    
    document.querySelectorAll('.community-card').forEach(card => {
        const cardCat  = card.dataset.category || '';
        const cardName = card.dataset.name || '';
        const isJoined = card.querySelector('.joined-badge') !== null;
    
       const matchCat =
            cat === 'all' ||
            (cat === 'joined' && isJoined) ||
            (cat !== 'joined' && cardCat === cat);

        const matchQuery = cardName.toLowerCase().includes(query);
    
        if (matchCat && matchQuery) {
            card.style.display = '';
        } else {
            card.style.display = 'none';
        }    

    });
}

/* Join Community Button */

function joinCommunity(btn) {
    btn.textContent = 'Joined';
    btn.classList.remove('btn-outline');
    btn.classList.add('btn-ghost');
    btn.style.color = "#15803D";
    btn.style.borderColor = "#22C55E";
    btn.onclick = null;
    
    const card = btn.closest('.community-card');
    if (card) {
        const banner = card.querySelector('.card-banner');
        if (banner && !banner.querySelector('.joined-badge')) {
            const badge = document.createElement('span');
            badge.className = 'joined-badge';
            badge.textContent = 'Joined';
            banner.appendChild(badge);
        }
    }
}

/* TOGGLE POST COMMENTS */
function toggleComments(btn) {
    const card = btn.closest('.post-card');
    if (!card) return;
    const area = card.querySelector('.comment-area');
    if (!area) return;

    const isHidden = area.style.display === 'none' || area.style.display === '';
    area.style.display = isHidden ? 'block' : 'none';
}

/* Create Post Modal */
function openCreatePostModal(){
    
    const modal = document.getElementById('postModal');
    if(modal) modal.classList.add('open');

}
function closeCreatePostModal(){

    const modal = document.getElementById('postModal');
    if(modal) modal.classList.remove('open');

}

document.addEventListener('click', function(e){
    const modal = document.getElementById('postModal');
    if(modal && e.target === modal) closeCreatePostModal();
});

/* Curriculum Modules TOGGLE */
function toggleModule(header) {
    const lessons = header.nextElementSibling;
    if (!lessons) return;

    const isHidden = lessons.style.display === 'none';
    lessons.style.display = isHidden ? 'block' : 'none';
    const arrow = header.querySelector('.curr-arrow');
    if (arrow) arrow.textContent = isHidden ? '▾' : '▸';
}

/* mark lesson as completed */

function markCompleted(btn) {
    btn.textContent = 'Completed';
    btn.style.color = 'var(--success)';
    btn.disabled = true;
    btn.style.opacity = '.8';
}

/* Profile Edit */
function enableEdit() {
    document.querySelectorAll('.profile-field').forEach(f => {
        f.disabled = false;
        f.style.borderColor = 'var(--pa)';
    });

    const row = document.getElementById('saveBtnRow');
    if (row) row.style.display = 'flex';
}

function cancelEdit() {
    document.querySelectorAll('.profile-field').forEach(f => {
        f.disabled = true;
        f.style.borderColor = '';
    });

    const row = document.getElementById('saveBtnRow');
    if (row) row.style.display = 'none';
}

function saveProfile() {
    cancelEdit();
    showToast('Profile saved successfully!', 'success');
}

/* REMOVE WISHLIST ITEM  */
function removeWishlist(btn) {
    const card = btn.closest('.course-enrol-card');
    if (card) {
        card.style.opacity = '0';
        card.style.transform = 'scale(.95)';
        card.style.transition = 'all .25s';
        setTimeout(() => card.remove(), 250);
    }
}

/*  TOAST NOTIFICATION */
function showToast(message, type) {
    const existing = document.getElementById('nx-toast');
    if (existing) existing.remove();

    const toast = document.createElement('div');
    toast.id = 'nx-toast';
    toast.style.cssText = `
        position: fixed; bottom: 1.5rem; right: 1.5rem; z-index: 9999;
        background: ${type === 'success' ? '#22C55E' : '#EF4444'};
        color: #fff; padding: .7rem 1.25rem; border-radius: 10px;
        font-family: 'DM Sans', sans-serif; font-size: .82rem; font-weight: 600;
        box-shadow: 0 8px 24px rgba(0,0,0,.15);
        animation: slideInToast .25s ease;
    `;
    toast.textContent = message;

    const style = document.createElement('style');
    style.textContent = `
        @keyframes slideInToast {
            from { opacity: 0; transform: translateY(1rem); }
            to   { opacity: 1; transform: translateY(0); }
        }
    `;
    document.head.appendChild(style);
    document.body.appendChild(toast);
    setTimeout(() => toast.remove(), 3000);
}

/* POST TAB SWITCHER (general) */
document.addEventListener('click', function (e) {
    if (e.target.classList.contains('post-tab')) {
        const siblings = e.target.parentElement.querySelectorAll('.post-tab');
        siblings.forEach(t => t.classList.remove('active'));
        e.target.classList.add('active');
    }
});

/* WISHLIST: check #hash on load */
document.addEventListener('DOMContentLoaded', function () {
    if (window.location.hash === '#wishlist') {
        const wishlistTab = document.querySelector('[onclick*="wishlist"]');
        if (wishlistTab) wishlistTab.click();
    }
});
