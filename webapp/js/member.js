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
