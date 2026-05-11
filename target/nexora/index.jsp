<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nexora – Community Learning Platform</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;500;600;700;800&family=DM+Sans:ital,opsz,wght@0,9..40,300;0,9..40,400;0,9..40,500;0,9..40,600;1,9..40,400&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/7.0.1/css/all.min.css">

</head>
<body>
<div id="landing" class="page active">
    <!-- NAVBAR -->
    <jsp:include page="/components/navbar.jsp" />

    <!-- HERO -->
    <section style="background:linear-gradient(180deg,#F5F7FB 0%,#EEF0FF 100%);padding-bottom:3rem">
        <div class="hero">
            <div class="hero-badge">✦ Trusted by 50,000+ learners &amp; creators</div>
            <h1>Build, <span>Learn</span>, and Grow<br>Your Communities</h1>
            <p>Nexora brings creators and learners together. Launch communities, publish courses, and build meaningful learning experiences — all in one place.</p>
            <div class="hero-ctas">
<%--                <button class="btn btn-primary btn-lg" style="padding:.8rem 2rem">Explore Communities</button>--%>
    <a href="${pageContext.request.contextPath}/user/explore-communities.jsp" class="btn btn-primary btn-lg" style="padding:.8rem 2rem">Explore Communities</a>
                <a href="${pageContext.request.contextPath}/user/creator-dashboard.jsp" class="btn btn-ghost btn-lg" style="padding:.8rem 2rem">Start Creating →</a>
            </div>
            <!-- Mini Dashboard Preview -->
            <div class="hero-preview">
                <div class="preview-bar">
                    <div class="preview-dot" style="background:#FF5F57"></div>
                    <div class="preview-dot" style="background:#FFBD2E"></div>
                    <div class="preview-dot" style="background:#28CA41"></div>
                    <div class="preview-url">app.nexora.io/dashboard</div>
                </div>
                <div class="preview-dashboard">
                    <div class="mini-sidebar">
                        <div class="mini-nav-item active">📊 Dashboard</div>
                        <div class="mini-nav-item"><i class="fa-regular fa-house"></i> Communities</div>
                        <div class="mini-nav-item">📚 Courses</div>
                        <div class="mini-nav-item">💬 Discussions</div>
                        <div class="mini-nav-item">👥 Members</div>
                    </div>
                    <div class="mini-content">
                        <div class="mini-cards">
                            <div class="mini-card"><div class="mini-card-val">12</div><div class="mini-card-lbl">Communities</div></div>
                            <div class="mini-card"><div class="mini-card-val">48</div><div class="mini-card-lbl">Courses</div></div>
                            <div class="mini-card"><div class="mini-card-val">3.2K</div><div class="mini-card-lbl">Members</div></div>
                            <div class="mini-card"><div class="mini-card-val">94%</div><div class="mini-card-lbl">Satisfaction</div></div>
                        </div>
                        <div style="display:grid;grid-template-columns:1fr 1fr;gap:.6rem">
                            <div class="mini-chart">
                                <div class="mini-bar" style="height:50%"></div>
                                <div class="mini-bar" style="height:70%"></div>
                                <div class="mini-bar" style="height:45%"></div>
                                <div class="mini-bar" style="height:85%"></div>
                                <div class="mini-bar" style="height:60%"></div>
                                <div class="mini-bar" style="height:90%"></div>
                                <div class="mini-bar" style="height:75%"></div>
                            </div>
                            <div style="background:#F9FAFB;border-radius:8px;border:1px solid var(--border);padding:.5rem;font-size:.7rem;color:var(--text-muted);display:flex;flex-direction:column;gap:.3rem">
                                <div style="display:flex;align-items:center;gap:.35rem"><div style="width:8px;height:8px;border-radius:2px;background:var(--success)"></div>+24 new members</div>
                                <div style="display:flex;align-items:center;gap:.35rem"><div style="width:8px;height:8px;border-radius:2px;background:var(--accent)"></div>3 courses live</div>
                                <div style="display:flex;align-items:center;gap:.35rem"><div style="width:8px;height:8px;border-radius:2px;background:var(--warning)"></div>5 pending</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- POPULAR COMMUNITIES -->
    <section class="section">
        <div class="section-header">
            <div class="section-label">Communities</div>
            <h2 class="section-title">Popular Communities</h2>
            <p class="section-sub">Join thousands of learners in active, curated communities</p>
        </div>
        <div class="cards-grid">
            <div class="community-card">
                <div class="card-banner" style="background:linear-gradient(135deg,#6C63FF,#8B5CF6)">
                    <div class="card-banner-overlay">
                        <div class="card-avatar" style="background:var(--accent);color:#fff;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:.85rem">🚀</div>
                    </div>
                </div>
                <div class="card-body">
                    <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem"><div class="card-title">Dev Builders</div><span class="badge badge-purple">Tech</span></div>
                    <p class="card-desc">A community for indie developers building real products. Share progress, get feedback, and grow together.</p>
                    <div class="card-meta"><span>👥 4,821 members</span><span>📚 18 courses</span></div>
                </div>
            </div>
            <div class="community-card">
                <div class="card-banner" style="background:linear-gradient(135deg,#F59E0B,#EF4444)">
                    <div class="card-banner-overlay">
                        <div class="card-avatar" style="background:var(--warning);color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">🎨</div>
                    </div>
                </div>
                <div class="card-body">
                    <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem"><div class="card-title">Design Minds</div><span class="badge badge-amber">Design</span></div>
                    <p class="card-desc">UI/UX designers sharing work, critiques, and tools. Weekly challenges and guest expert sessions.</p>
                    <div class="card-meta"><span>👥 2,304 members</span><span>📚 12 courses</span></div>
                </div>
            </div>
            <div class="community-card">
                <div class="card-banner" style="background:linear-gradient(135deg,#22C55E,#10B981)">
                    <div class="card-banner-overlay">
                        <div class="card-avatar" style="background:var(--success);color:#fff;display:flex;align-items:center;justify-content:center;font-size:.85rem">💡</div>
                    </div>
                </div>
                <div class="card-body">
                    <div style="display:flex;justify-content:space-between;align-items:flex-start;margin-bottom:.25rem"><div class="card-title">Startup Circle</div><span class="badge badge-green">Business</span></div>
                    <p class="card-desc">Founders and aspiring entrepreneurs collaborating on ideas, funding, and growth strategies.</p>
                    <div class="card-meta"><span>👥 7,193 members</span><span>📚 25 courses</span></div>
                </div>
            </div>
        </div>
    </section>

    <!-- FEATURED COURSES -->
    <section class="section" style="background:#fff;border-radius:0;padding-top:4.5rem;padding-bottom:4.5rem;max-width:100%">
        <div style="max-width:1200px;margin:0 auto">
            <div class="section-header">
                <div class="section-label">Courses</div>
                <h2 class="section-title">Featured Courses</h2>
                <p class="section-sub">Expert-led courses in design, development, business &amp; more</p>
            </div>
            <div class="cards-grid">
                <div class="community-card">
                    <div style="height:120px;background:linear-gradient(135deg,#EEF2FF,#E0E7FF);display:flex;align-items:center;justify-content:center;font-size:3rem">🎓</div>
                    <div class="card-body">
                        <div class="card-title" style="margin-bottom:.2rem">Full-Stack JavaScript 2025</div>
                        <div style="font-size:.75rem;color:var(--text-muted);margin-bottom:.6rem">By <strong style="color:var(--text)">Alex Rivera</strong> · Dev Builders</div>
                        <div style="display:flex;align-items:center;justify-content:space-between">
                            <div style="display:flex;gap:.4rem;align-items:center"><span style="color:#F59E0B;font-size:.875rem">★★★★★</span><span style="font-size:.75rem;color:var(--text-muted)">(412)</span></div>
                            <span style="font-weight:700;color:var(--text);font-family:var(--font-head)">$49</span>
                        </div>
                    </div>
                </div>
                <div class="community-card">
                    <div style="height:120px;background:linear-gradient(135deg,#FEF3C7,#FDE68A);display:flex;align-items:center;justify-content:center;font-size:3rem">✏️</div>
                    <div class="card-body">
                        <div class="card-title" style="margin-bottom:.2rem">Figma Mastery: Pro UI Design</div>
                        <div style="font-size:.75rem;color:var(--text-muted);margin-bottom:.6rem">By <strong style="color:var(--text)">Maya Patel</strong> · Design Minds</div>
                        <div style="display:flex;align-items:center;justify-content:space-between">
                            <div style="display:flex;gap:.4rem;align-items:center"><span style="color:#F59E0B;font-size:.875rem">★★★★☆</span><span style="font-size:.75rem;color:var(--text-muted)">(287)</span></div>
                            <span style="font-weight:700;color:var(--text);font-family:var(--font-head)">$39</span>
                        </div>
                    </div>
                </div>
                <div class="community-card">
                    <div style="height:120px;background:linear-gradient(135deg,#ECFDF5,#A7F3D0);display:flex;align-items:center;justify-content:center;font-size:3rem">📈</div>
                    <div class="card-body">
                        <div class="card-title" style="margin-bottom:.2rem">Growth Marketing Fundamentals</div>
                        <div style="font-size:.75rem;color:var(--text-muted);margin-bottom:.6rem">By <strong style="color:var(--text)">Jordan Kim</strong> · Startup Circle</div>
                        <div style="display:flex;align-items:center;justify-content:space-between">
                            <div style="display:flex;gap:.4rem;align-items:center"><span style="color:#F59E0B;font-size:.875rem">★★★★★</span><span style="font-size:.75rem;color:var(--text-muted)">(198)</span></div>
                            <span style="font-weight:700;color:var(--success);font-family:var(--font-head)">Free</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- WHY NEXORA -->
    <section class="section">
        <div class="section-header">
            <div class="section-label">Why Nexora</div>
            <h2 class="section-title">Everything you need to grow</h2>
            <p class="section-sub">A complete toolkit for creators and learners building the future</p>
        </div>
        <div class="features-grid">
            <div class="feature-item"><div class="feature-icon">🏘️</div><div class="feature-text"><h3>Vibrant Communities</h3><p>Build engaged communities with rich discussions, announcements, and member management tools built in.</p></div></div>
            <div class="feature-item"><div class="feature-icon">📚</div><div class="feature-text"><h3>Powerful Course Builder</h3><p>Create structured courses with modules, video uploads, quizzes, and progress tracking for your learners.</p></div></div>
            <div class="feature-item"><div class="feature-icon">💬</div><div class="feature-text"><h3>Rich Discussions</h3><p>Threaded conversations, reactions, and social learning features that keep communities engaged and active.</p></div></div>
            <div class="feature-item"><div class="feature-icon">💰</div><div class="feature-text"><h3>Flexible Monetization</h3><p>Sell courses, charge community memberships, or keep it free. Full control over your revenue model.</p></div></div>
            <div class="feature-item"><div class="feature-icon">📊</div><div class="feature-text"><h3>Creator Analytics</h3><p>Deep insights into member engagement, course completion, and community growth with real-time dashboards.</p></div></div>
            <div class="feature-item"><div class="feature-icon">📱</div><div class="feature-text"><h3>Fully Responsive</h3><p>Native-quality experience across desktop, tablet, and mobile — your community is always accessible.</p></div></div>
        </div>
    </section>

    <!-- STATS -->
    <section style="background:linear-gradient(135deg,var(--accent) 0%,#8B5CF6 100%);padding:4rem 2rem">
        <div class="stats-row" style="max-width:900px;margin:0 auto">
            <div><div class="stat-num" style="color:#fff">50K+</div><div class="stat-lbl" style="color:rgba(255,255,255,.75)">Active Learners</div></div>
            <div><div class="stat-num" style="color:#fff">1,200+</div><div class="stat-lbl" style="color:rgba(255,255,255,.75)">Communities</div></div>
            <div><div class="stat-num" style="color:#fff">8,400+</div><div class="stat-lbl" style="color:rgba(255,255,255,.75)">Courses Published</div></div>
            <div><div class="stat-num" style="color:#fff">98%</div><div class="stat-lbl" style="color:rgba(255,255,255,.75)">Satisfaction Rate</div></div>
        </div>
    </section>

    <!-- TESTIMONIALS -->
    <section class="section">
        <div class="section-header">
            <div class="section-label">Testimonials</div>
            <h2 class="section-title">Loved by creators</h2>
        </div>
        <div class="testimonials-grid">
            <div class="testimonial-card">
                <div style="color:#F59E0B;font-size:.875rem;margin-bottom:.75rem">★★★★★</div>
                <p class="testimonial-quote">"Nexora completely changed how I teach. My community grew from 0 to 3,000 members in four months. The course builder is exceptional."</p>
                <div class="testimonial-author"><div class="avatar" style="background:#6C63FF">AK</div><div><div class="avatar-name">Alex Kim</div><div class="avatar-role">Full-Stack Developer &amp; Creator</div></div></div>
            </div>
            <div class="testimonial-card">
                <div style="color:#F59E0B;font-size:.875rem;margin-bottom:.75rem">★★★★★</div>
                <p class="testimonial-quote">"The analytics dashboard alone is worth it. I can see exactly which lessons are resonating and optimize on the fly. Amazing product."</p>
                <div class="testimonial-author"><div class="avatar" style="background:#8B5CF6">SL</div><div><div class="avatar-name">Sarah Lin</div><div class="avatar-role">UX Designer &amp; Educator</div></div></div>
            </div>
            <div class="testimonial-card">
                <div style="color:#F59E0B;font-size:.875rem;margin-bottom:.75rem">★★★★★</div>
                <p class="testimonial-quote">"I've tried Teachable, Circle, Discord — Nexora is the only platform that genuinely integrates community + courses beautifully."</p>
                <div class="testimonial-author"><div class="avatar" style="background:#22C55E">JM</div><div><div class="avatar-name">James Moore</div><div class="avatar-role">Startup Founder &amp; Coach</div></div></div>
            </div>
        </div>
    </section>

    <!-- FAQ -->
    <section class="section" style="max-width:900px">
        <div class="section-header">
            <div class="section-label">FAQ</div>
            <h2 class="section-title">Common Questions</h2>
        </div>
        <div class="faq-list">
            <div class="faq-item open">
                <div class="faq-q" onclick="toggleFaq(this)">Is Nexora free to start?<span class="faq-arrow">▾</span></div>
                <div class="faq-a">Yes! You can create an account and start building communities and courses for free. Paid plans unlock additional members, advanced analytics, and monetization tools.</div>
            </div>
            <div class="faq-item">
                <div class="faq-q" onclick="toggleFaq(this)">How do I monetize my community?<span class="faq-arrow">▾</span></div>
                <div class="faq-a">You can charge for course access, set community membership fees, or offer a freemium model. Payments are processed via Stripe with instant payouts.</div>
            </div>
            <div class="faq-item">
                <div class="faq-q" onclick="toggleFaq(this)">Can I migrate from another platform?<span class="faq-arrow">▾</span></div>
                <div class="faq-a">Absolutely. We offer import tools for Circle, Teachable, and Kajabi. Our support team helps with custom migrations at no extra cost.</div>
            </div>
            <div class="faq-item">
                <div class="faq-q" onclick="toggleFaq(this)">What video hosting is included?<span class="faq-arrow">▾</span></div>
                <div class="faq-a">All plans include secure video hosting powered by our CDN. You can upload directly or connect your existing Vimeo or Wistia account.</div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <jsp:include page="/components/footer.jsp" />
</div>

<script>
    function toggleFaq(element) {
        const item = element.parentElement;
        item.classList.toggle('open');
    }
</script>
</body>
</html>
