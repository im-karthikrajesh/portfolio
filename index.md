---
layout: home
title: "Portfolio"
---

## Projects {#projects}

{% if site.data.projects and site.data.projects.size > 0 %}
<div class="grid">
  {% for p in site.data.projects %}
  <div class="card">
    {% if p.image %}
      <img class="thumb"
           src="{{ p.image | relative_url }}"
           alt="{{ p.title }} thumbnail"
           loading="lazy" decoding="async">
    {% endif %}

    <h3>{{ p.title }}</h3>
    {% if p.period %}<p class="muted">{{ p.period }}</p>{% endif %}
    {% if p.tagline %}<p>{{ p.tagline }}</p>{% endif %}

    {% if p.highlights %}
      <ul>
        {% for h in p.highlights limit:3 %}<li>{{ h }}</li>{% endfor %}
      </ul>
      {% if p.highlights.size > 3 %}
        <details>
          <summary>More details</summary>
          <ul>
            {% for h in p.highlights offset:3 %}<li>{{ h }}</li>{% endfor %}
          </ul>
        </details>
      {% endif %}
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
<p class="muted">No projects found. This section is driven by <code>_data/projects.yml</code>.</p>
{% endif %}

---

## Experience {#experience}

<!-- ===== Current role first ===== -->
<div class="xp-card">
  <h3>Project Developer, EMtel Limited</h3>
  <p class="xp-meta">
    <span class="xp-chip">Full-time</span> Sep 2025 – Present
    <span class="xp-dot">•</span>
    <span class="xp-chip">Part-time</span> Jan 2025 – Sep 2025
  </p>

  <ul class="xp-points">
    <li>Led the integration of <strong>Zoho One ↔ Tekton Zoey</strong>, unifying CRM, billing and operations—bridging <strong>data, events and workflows</strong> across platforms.</li>
    <li>Shipped custom <strong>Deluge</strong> functions, webhooks and REST integrations (Zoho CRM/Books/Campaigns) backed by <strong>MySQL on Plesk</strong>; designed for reliability, auditability and low maintenance.</li>
    <li>Built automation layers for <strong>lead routing, campaign engagement, account creation, call scheduling</strong>; standardized error handling and observability for faster troubleshooting.</li>
    <li>Developed <strong>predictive signals</strong> to score likelihood-to-stay and intent; surfaced results in Zoho for targeted outreach and tiered follow-ups.</li>
    <li>Partnered with business users and stakeholders to capture requirements, prototype quickly and iterate to fit real-world workflows; delivered <strong>training and SOPs</strong> to drive adoption.</li>
    <li>Implemented secure data flows and schema design in <strong>MySQL</strong>, optimized queries and created reusable modules to accelerate future projects.</li>
    <li>Maintained <strong>source control and documentation in GitHub</strong> for reproducible releases and peer review.</li>
  </ul>

  <details>
    <summary><strong>Core stack & tools</strong> (click to expand)</summary>
    <p><strong>Platforms:</strong> Zoho One, Tekton Zoey, Plesk<br/>
    <strong>Languages:</strong> Deluge, Python, SQL (MySQL), PHP, HTML/CSS/JavaScript<br/>
    <strong>Integration:</strong> REST APIs, webhooks, OAuth, error/exception handling, idempotency<br/>
    <strong>DevOps/Tools:</strong> GitHub, logging/monitoring, documentation & SOPs<br/>
    <strong>Business:</strong> Stakeholder management, requirements elicitation, user training, process redesign</p>
  </details>
</div>

<div class="xp-card">
  <h3>Senior Solution Engineer, IBS Software</h3>
  <p class="xp-meta">
    Full-time • Apr 2021 – Aug 2024 (3 yrs 5 mos)
    <span class="xp-dot">•</span> Ernakulam, Kerala, India
    <span class="xp-dot">•</span> Hybrid
  </p>
  <p class="muted"><em>Client: Expedia Group</em></p>

  <ul class="xp-points">
    <li>Spearheaded migration of the <strong>Runtime Compute Platform (RCP)</strong> for Airmate (flight operations), delivering optimized infrastructure to support new BI capabilities.</li>
    <li>Bridged IT capabilities with business objectives; guided stakeholders to implement <strong>data-driven decision-making</strong> via insights platforms.</li>
    <li>Led testing and integration for Airmate enhancements, improving <strong>availability, quality and scalability</strong> of flight operations data.</li>
    <li>Drove high-impact initiatives; applied <strong>analytical modelling</strong> and <strong>data visualisations</strong> to optimize configurations, bolster scalability and streamline flight-related processes.</li>
    <li><strong>Awards:</strong> Team Champ (successful RCP migration); Debutant; Passionate & Persistent (Virtual) for technical leadership and transformation impact.</li>
    <li><strong>Progression:</strong> Promoted from Solution Engineer to <strong>Senior Solution Engineer</strong> for stakeholder understanding, solution ideation and measurable delivery.</li>
  </ul>

  <details>
    <summary><strong>Core stack & tools</strong> (click to expand)</summary>
    <p><strong>Full-Stack & Languages:</strong> Core Java, Kotlin, Python, JavaScript, React.js<br/>
    <strong>Cloud & DevOps:</strong> AWS, Kubernetes, Docker, Jenkins, Spinnaker, GitHub Actions<br/>
    <strong>Data & DB:</strong> SQL<br/>
    <strong>Practices:</strong> Project management, problem solving, business analysis, GitHub/CI/CD</p>
  </details>
</div>

---

## Education {#education}

<div class="xp-card">
  <h3>MSc Business Analytics, University of Nottingham (UK)</h3>
  <p class="xp-meta">Sep 2024 – 2025</p>

  <p><span class="xp-chip">Scholarship</span> <strong>Postgraduate Excellence Award</strong></p>

  <details>
    <summary><strong>Modules covered</strong></summary>
    <ul>
      <li>Machine Learning and Predictive Analytics</li>
      <li>Foundational Business Analytics</li>
      <li>Analytics Specializations and Applications</li>
      <li>Data at Scale: Management, Processing, Visualization</li>
      <li>Leading Big Data Business Projects</li>
      <li>Supply Chain Planning and Management</li>
      <li>Digital Marketing</li>
    </ul>
  </details>
</div>

<div class="xp-card">
  <h3>Bachelor’s in Electronics & Communication Engineering, Adi Shankara Institute of Engineering and Technology (India)</h3>
  <p class="xp-meta">Aug 2016 – 2020</p>

  <details>
    <summary><strong>Capstone project: Kinesics Articulation</strong></summary>
    <p>
      Built a microprocessor-driven system in Python to translate sensor-captured gestures
      into audible speech, supporting communication for deaf and hard-of-hearing users.
      Also designed a mobile text-to-speech app (Android Studio + Flutter) for accessible,
      real-time communication. Demonstrated in schools and deaf community facilities, earning
      recognition from colleges and universities.
    </p>
  </details>
</div>

---

## Honors & Awards {#awards}

<div class="xp-card">
  <h3>Recognitions</h3>
  <ul class="xp-points">
    <li><strong>Postgraduate Excellence Award Scholarship</strong> — University of Nottingham</li>
    <li><strong>Team Champ Award</strong> — IBS Software</li>
    <li><strong>Passionate Virtual Award</strong> — IBS Software</li>
    <li><strong>Perseverant Virtual Award</strong> — IBS Software</li>
    <li><strong>Debutant Award</strong> — IBS Software</li>
    <li><strong>ACCESS Project Presentation Certificate</strong> — Adi Shankara Institute of Engineering and Technology</li>
  </ul>

  <p>
    <a class="btn" href="https://www.linkedin.com/in/karthikrajesh05/details/honors/" target="_blank" rel="noopener">
      View awards
      <!-- small external-link arrow -->
      <svg class="ico" viewBox="0 0 24 24" width="16" height="16" aria-hidden="true">
        <path fill="currentColor" d="M14 3h7v7h-2V6.41l-9.29 9.3-1.42-1.42 9.3-9.29H14V3zM5 5h6v2H7v10h10v-4h2v6H5V5z"/>
      </svg>
    </a>
  </p>
</div>
