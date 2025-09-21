---
layout: default
title: "{{ site.title }} — Portfolio"
---

<!-- Load our custom CSS (compiles from assets/css/style.scss) -->
<link rel="stylesheet" href="{{ '/assets/css/style.css' | relative_url }}">

<!-- ===== Hero ===== -->
<div class="hero">
  <img class="headshot" src="{{ site.logo | relative_url }}" alt="Headshot of {{ site.title }}" />
  <div class="hero-text">
    <h1>{{ site.title }}</h1>
    <p class="tagline">{{ site.description }}</p>
    <p class="links">
      <a href="{{ site.author.github }}" target="_blank" rel="noopener">GitHub</a>
      · <a href="{{ site.author.linkedin }}" target="_blank" rel="noopener">LinkedIn</a>
      · <a href="mailto:{{ site.author.email }}">Email</a>
    </p>
    <p class="open-to">Open to: <strong>SDE (ML)</strong>, <strong>ML Engineer</strong>, <strong>Data Scientist/Engineer</strong>, <strong>IT Business Analyst</strong></p>
  </div>
</div>

<!-- ===== Section Nav ===== -->
<nav class="nav">
  <a href="#projects">Projects</a>
  <a href="#experience">Experience</a>
  <a href="#education">Education</a>
  <a href="#contact">Contact</a>
</nav>

---

## Projects {#projects}

{% if site.data.projects and site.data.projects.size > 0 %}
<div class="grid">
  {% for p in site.data.projects %}
  <div class="card">
    {% if p.image %}<img class="thumb" src="{{ p.image | relative_url }}" alt="{{ p.title }} thumbnail">{% endif %}
    <h3>{{ p.title }}</h3>
    {% if p.period %}<p class="muted">{{ p.period }}</p>{% endif %}
    {% if p.tagline %}<p>{{ p.tagline }}</p>{% endif %}

    {% if p.highlights %}
    <ul>
      {% for h in p.highlights %}<li>{{ h }}</li>{% endfor %}
    </ul>
    {% endif %}

    <p class="meta">
      {% if p.repo %}<a href="{{ p.repo }}" target="_blank" rel="noopener">GitHub</a>{% endif %}
      {% if p.demo %}{% if p.repo %} · {% endif %}<a href="{{ p.demo }}" target="_blank" rel="noopener">Live</a>{% endif %}
      {% if p.report %}{% if p.repo or p.demo %} · {% endif %}<a href="{{ p.report }}" target="_blank" rel="noopener">Report</a>{% endif %}
    </p>

    {% if p.tech %}
    <div class="tags">
      {% for t in p.tech %}<span class="tag">{{ t }}</span>{% endfor %}
    </div>
    {% endif %}
  </div>
  {% endfor %}
</div>
{% else %}
<p class="muted">
  No projects found. This section is driven by <code>_data/projects.yml</code>.
</p>
{% endif %}

---

## Experience {#experience}

**Senior Solution Engineer, IBS Software** — _Full-time • Apr 2021 – Aug 2024 (3 yrs 5 mos) • Ernakulam, Kerala, India • Hybrid_  
_Client: Expedia Group_

- Spearheaded the migration of the **Runtime Compute Platform (RCP)** for Airmate (flight operations), delivering optimized infrastructure to support new BI capabilities.  
- Bridged IT capabilities with business objectives, consultatively guiding stakeholders to implement **data-driven decision-making** through the development of insights platforms.  
- Led testing and integration for Airmate enhancements, significantly improving the **availability, quality, and scalability** of flight operations data.  
- Drove multiple high-impact initiatives, applying **analytical modeling** and **data visualizations** to optimize configurations, bolster scalability, and streamline flight-related processes.  
- **Awards:** Team Champ (successful RCP migration); Debutant; Passionate & Persistent (Virtual) for technical leadership and transformation impact.  
- **Progression:** Promoted from Solution Engineer to **Senior Solution Engineer** for strong stakeholder understanding, solution ideation, and measurable delivery.

<details>
<summary><strong>Core stack & tools</strong> (click to expand)</summary>

**Full-Stack & Languages:** Core Java, Kotlin, Python, JavaScript, React.js  
**Cloud & DevOps:** AWS, Kubernetes, Docker, Jenkins, Spinnaker, GitHub Actions  
**Data & DB:** SQL  
**Practices:** Project management, problem solving, business analysis, GitHub/CI/CD
</details>

<br/>

**Project Developer, EMtel Limited** — _Part-Time → Full-Time • Jan 2025 – Sep 2025 (Part-Time); Sep 2025 – Present (Full-Time)_  

- Led the integration of **Zoho One ↔ Tekton Zoey**, unifying CRM, billing, and operations—bridging **data, events, and workflows** across platforms.  
- Designed and shipped custom **Deluge** functions, webhooks, and REST integrations (Zoho CRM/Books/Campaigns) with **MySQL on Plesk**, ensuring reliability, auditability, and low maintenance.  
- Built automation layers for **lead routing, campaign engagement, account creation, call scheduling**; standardized error handling and observability for faster troubleshooting.  
- Developed **predictive signals** to score likelihood-to-stay and interest intent; embedded outputs into Zoho for targeted outreach and tiered follow-ups.  
- Partnered with business users to capture requirements, prototype rapidly, and iterate to fit real-world workflows; delivered **training and SOPs** to drive adoption.  
- Implemented secure data flows and schema design in **MySQL**, optimized queries, and created reusable modules to accelerate future projects.  
- Maintained **source control and documentation in GitHub**, enabling reproducible releases and peer review.

<details>
<summary><strong>Core stack & tools</strong> (click to expand)</summary>

**Platforms:** Zoho One, Tekton Zoey, Plesk  
**Languages:** Deluge, Python, SQL (MySQL), PHP, HTML/CSS/JavaScript  
**Integration:** REST APIs, webhooks, OAuth, error/exception handling, idempotency  
**DevOps/Tools:** GitHub, logging/monitoring, documentation & SOPs  
**Business:** Stakeholder management, requirements elicitation, user training, process redesign
</details>

---

## Education {#education}

**MSc Business Analytics**, University of Nottingham (UK)

**Modules covered:**
- Machine Learning and Predictive Analytics  
- Foundational Business Analytics  
- Analytics Specializations and Applications  
- Data at Scale: Management, Processing, Visualization  
- Leading Big Data Business Projects  
- Supply Chain Planning and Management  
- Digital Marketing

---

## Contact {#contact}

- **Email:** <a href="mailto:{{ site.author.email }}">{{ site.author.email }}</a>  
- **LinkedIn:** <a href="{{ site.author.linkedin }}" target="_blank" rel="noopener">{{ site.author.linkedin }}</a>  
- **GitHub:** <a href="{{ site.author.github }}" target="_blank" rel="noopener">{{ site.author.github }}</a>

<hr class="footnote" />
<p class="tiny">© {{ site.time | date: "%Y" }} {{ site.title }} • Built with GitHub Pages (Jekyll)</p>
