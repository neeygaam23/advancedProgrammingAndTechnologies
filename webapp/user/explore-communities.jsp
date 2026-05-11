<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Explore Communities | Nexora</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
  <style>
    .explore-header {
      background: linear-gradient(135deg, var(--accent) 0%, #8B5CF6 100%);
      padding: 4rem 2rem;
      text-align: center;
      color: #fff;
    }
    .explore-header h1 {
      font-family: var(--font-head);
      font-size: 2.5rem;
      font-weight: 800;
      margin-bottom: 1rem;
      letter-spacing: -0.02em;
    }
    .explore-header p {
      font-size: 1.1rem;
      opacity: 0.9;
      max-width: 600px;
      margin: 0 auto 2rem;
    }
    .explore-search-bar {
      max-width: 600px;
      margin: 0 auto;
      position: relative;
    }
    .explore-search-bar input {
      width: 100%;
      padding: 1rem 1.5rem 1rem 3rem;
      border-radius: 100px;
      border: none;
      font-size: 1rem;
      box-shadow: var(--shadow-lg);
      outline: none;
      font-family: var(--font-body);
    }
    .explore-search-bar .search-icon {
      position: absolute;
      left: 1.2rem;
      top: 50%;
      transform: translateY(-50%);
      font-size: 1.2rem;
    }
    .category-filters {
      display: flex;
      gap: 0.5rem;
      justify-content: center;
      flex-wrap: wrap;
      margin-top: 2rem;
    }
    .category-pill {
      background: rgba(255, 255, 255, 0.2);
      color: #fff;
      padding: 0.4rem 1rem;
      border-radius: 100px;
      font-size: 0.875rem;
      font-weight: 500;
      cursor: pointer;
      border: 1px solid rgba(255, 255, 255, 0.3);
      transition: all 0.2s;
    }
    .category-pill:hover, .category-pill.active {
      background: #fff;
      color: var(--accent);
    }
    .explore-container {
      max-width: 1200px;
      margin: 0 auto;
      padding: 4rem 2rem;
    }
  </style>
</head>
<body>
<div id="explore" class="page active">
  <!-- NAVBAR -->
  <jsp:include page="/components/navbar.jsp" />

  <!-- HEADER -->
  <div class="explore-header">
    <h1>Discover Communities</h1>
    <p>Find your tribe. Join thousands of creators and learners in vibrant communities built around your interests.</p>

    <div class="explore-search-bar">
      <span class="search-icon">🔍</span>
      <input type="text" placeholder="Search for topics, skills, or community names...">
    </div>

    <div class="category-filters">
      <div class="category-pill active">All</div>
      <div class="category-pill">Technology</div>
      <div class="category-pill">Design</div>
      <div class="category-pill">Business</div>
      <div class="category-pill">Marketing</div>
      <div class="category-pill">Personal Growth</div>
    </div>
  </div>

  <!-- COMMUNITIES GRID -->
  <div class="explore-container">
    <div style="display: flex; justify-content: space-between; align-items: center; margin-bottom: 2rem;">
      <h2 style="font-family: var(--font-head); font-weight: 700; font-size: 1.5rem;">Trending Now</h2>
      <div style="display: flex; gap: 1rem; align-items: center;">
        <span style="font-size: 0.875rem; color: var(--text-muted);">Sort by:</span>
        <select style="padding: 0.4rem 0.8rem; border-radius: 8px; border: 1px solid var(--border); font-family: var(--font-body); font-size: 0.875rem; outline: none;">
          <option>Most Popular</option>
          <option>Newest</option>
          <option>Most Active</option>
        </select>
      </div>
    </div>

    <div class="cards-grid">
      <!-- Card 1 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#6C63FF,#8B5CF6)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:var(--accent);color:#fff;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:.85rem">🚀</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Dev Builders</div>
            <span class="badge badge-purple">Tech</span>
          </div>
          <p class="card-desc">A community for indie developers building real products. Share progress, get feedback, and grow together.</p>
          <div class="card-meta"><span>👥 4,821 members</span><span>📚 18 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>

      <!-- Card 2 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#F59E0B,#EF4444)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:var(--warning);color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">🎨</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Design Minds</div>
            <span class="badge badge-amber">Design</span>
          </div>
          <p class="card-desc">UI/UX designers sharing work, critiques, and tools. Weekly challenges and guest expert sessions.</p>
          <div class="card-meta"><span>👥 2,304 members</span><span>📚 12 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>

      <!-- Card 3 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#22C55E,#10B981)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:var(--success);color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">💡</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Startup Circle</div>
            <span class="badge badge-green">Business</span>
          </div>
          <p class="card-desc">Founders and aspiring entrepreneurs collaborating on ideas, funding, and growth strategies.</p>
          <div class="card-meta"><span>👥 7,193 members</span><span>📚 25 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>

      <!-- Card 4 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#EC4899,#F43F5E)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:#EC4899;color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">✍️</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Writers Block</div>
            <span class="badge badge-gray">Creative</span>
          </div>
          <p class="card-desc">A safe space for authors and copywriters. Daily prompts, manuscript swaps, and publishing advice.</p>
          <div class="card-meta"><span>👥 1,450 members</span><span>📚 5 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>

      <!-- Card 5 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#3B82F6,#2563EB)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:#3B82F6;color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">📈</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Growth Hackers</div>
            <span class="badge badge-purple">Marketing</span>
          </div>
          <p class="card-desc">Tactics, tools, and strategies for scaling products. Weekly AMAs with top growth marketing leaders.</p>
          <div class="card-meta"><span>👥 3,120 members</span><span>📚 8 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>

      <!-- Card 6 -->
      <div class="community-card">
        <div class="card-banner" style="background:linear-gradient(135deg,#14B8A6,#0D9488)">
          <div class="card-banner-overlay">
            <div class="card-avatar" style="background:#14B8A6;color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">🧠</div>
          </div>
        </div>
        <div class="card-body">
          <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem">
            <div class="card-title">Mindful Living</div>
            <span class="badge badge-green">Health</span>
          </div>
          <p class="card-desc">Meditation practices, productivity hacks, and discussions on maintaining mental wellness while working.</p>
          <div class="card-meta"><span>👥 5,600 members</span><span>📚 14 courses</span></div>
          <button class="btn btn-primary" style="width: 100%; margin-top: 1.5rem; justify-content: center;">View Community</button>
        </div>
      </div>
    </div>

    <div style="text-align: center; margin-top: 4rem;">
      <button class="btn btn-outline btn-lg" style="padding: 0.8rem 3rem;">Load More</button>
    </div>
  </div>

  <!-- FOOTER -->
  <jsp:include page="/components/footer.jsp" />
</div>

<script>
  // Simple script to toggle active state on category pills
  document.querySelectorAll('.category-pill').forEach(pill => {
    pill.addEventListener('click', function() {
      document.querySelectorAll('.category-pill').forEach(p => p.classList.remove('active'));
      this.classList.add('active');
    });
  });
</script>
</body>
</html>
