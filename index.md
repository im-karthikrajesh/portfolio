---
layout: home
title: "Portfolio"
---

## Projects {#projects}

{% if site.data.projects and site.data.projects.size > 0 %}
<div class="grid">
  {% for p in site.data.projects %}
  <details class="card project-card">
    <summary class="project-summary">
    {% if p.image %}
      <img class="thumb{% if p.image_fit == 'contain' %} thumb-contain{% endif %}"
           src="{{ p.image | relative_url }}"
           alt="{{ p.title }} thumbnail"
           loading="lazy" decoding="async">
    {% endif %}

      <div class="project-heading">
        <div>
          <h3 class="project-title">{{ p.title }}</h3>
        </div>
        <span class="project-cta">
          <span class="when-closed">View details</span>
          <span class="when-open project-close" title="Close project details">
            <svg class="ico" viewBox="0 0 24 24" aria-hidden="true">
              <path d="M18 6 6 18M6 6l12 12"></path>
            </svg>
            <span class="sr-only">Close project details</span>
          </span>
        </span>
      </div>

      {% if p.tagline %}<span class="project-description">{{ p.tagline }}</span>{% endif %}
    </summary>

    <div class="project-body">

    {% if p.highlights %}
      <h4>Project details</h4>
      <ul>
        {% for h in p.highlights %}<li>{{ h }}</li>{% endfor %}
      </ul>
    {% endif %}

    {% if p.tech %}
      <h4>Tech stack</h4>
      <div class="tags">
        {% for t in p.tech %}<span class="tag">{{ t }}</span>{% endfor %}
      </div>
    {% endif %}

    {% if p.repo or p.pr or p.linkedin_post or p.demo or p.report %}
    <div class="project-actions">
      {% if p.repo %}
        <a class="project-link" href="{{ p.repo }}" target="_blank" rel="noopener" aria-label="View {{ p.title }} on GitHub">
          <svg class="ico" viewBox="0 0 16 16" aria-hidden="true">
            <path fill="currentColor" d="M8 .2a8 8 0 0 0-2.53 15.59c.4.07.55-.17.55-.38v-1.33c-2.24.49-2.71-1.08-2.71-1.08-.37-.95-.91-1.2-.91-1.2-.74-.51.06-.5.06-.5.82.06 1.25.85 1.25.85.73 1.25 1.92.89 2.39.68.07-.53.29-.89.52-1.1-1.79-.2-3.68-.9-3.68-4a3.14 3.14 0 0 1 .84-2.18 2.9 2.9 0 0 1 .08-2.16s.68-.22 2.23.84a7.7 7.7 0 0 1 4.06 0c1.55-1.06 2.23-.84 2.23-.84.3.7.32 1.5.08 2.16a3.14 3.14 0 0 1 .84 2.18c0 3.11-1.9 3.79-3.71 4 .3.26.56.78.56 1.58v2.34c0 .21.14.46.55.38A8 8 0 0 0 8 .2Z"/>
          </svg>
          {{ p.repo_label | default: "GitHub" }}
        </a>
      {% endif %}
      {% if p.pr %}
        <a class="project-link" href="{{ p.pr }}" target="_blank" rel="noopener" aria-label="View the {{ p.title }} pull request">
          <svg class="ico" viewBox="0 0 24 24" aria-hidden="true">
            <circle cx="6" cy="18" r="3" fill="none" stroke="currentColor" stroke-width="2"/>
            <circle cx="18" cy="6" r="3" fill="none" stroke="currentColor" stroke-width="2"/>
            <path d="M6 15V6m0 0 3 3M6 6 3 9m15 0v3a6 6 0 0 1-6 6H9" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
          </svg>
          Pull request
        </a>
      {% endif %}
      {% if p.linkedin_post %}
        <a class="project-link" href="{{ p.linkedin_post }}" target="_blank" rel="noopener" aria-label="View the LinkedIn post about {{ p.title }}">
          <svg class="ico" viewBox="0 0 24 24" aria-hidden="true">
            <path fill="currentColor" d="M20.45 20.45h-3.55v-5.57c0-1.33-.02-3.03-1.85-3.03-1.85 0-2.13 1.45-2.13 2.95v5.65H9.37V9h3.4v1.56h.05c.47-.9 1.63-1.85 3.35-1.85 3.59 0 4.25 2.36 4.25 5.43v6.31ZM5.34 7.43a2.06 2.06 0 1 1 0-4.12 2.06 2.06 0 0 1 0 4.12ZM3.56 20.45h3.56V9H3.56v11.45Z"/>
          </svg>
          LinkedIn post
        </a>
      {% endif %}
      {% if p.demo %}<a class="project-link" href="{{ p.demo }}" target="_blank" rel="noopener">Live</a>{% endif %}
      {% if p.report %}<a class="project-link" href="{{ p.report }}" target="_blank" rel="noopener">Report</a>{% endif %}
    </div>
    {% endif %}
    </div>
  </details>
  {% endfor %}
</div>
{% else %}
<p class="muted">No projects found. This section is driven by <code>_data/projects.yml</code>.</p>
{% endif %}

---

## Tech Stack {#tech-stack}

{% include tech-stack.html %}

---

## Experience {#experience}

<div class="xp-card">
  <h3>Software Developer, EMtel Limited</h3>
  <p class="xp-meta">
    Jan 2025 – Present
    <span class="xp-dot">•</span> Nottingham, United Kingdom
  </p>

  <ul class="xp-points">
    <li>Designed and delivered end-to-end data and integration workflows across <strong>Zoho CRM</strong>, <strong>Tekton Zoey</strong> and internal systems using <strong>Python</strong>, <strong>Java</strong>, <strong>JavaScript</strong>, <strong>REST APIs</strong> and <strong>MySQL</strong>.</li>
    <li>Improved data consistency, reduced manual effort and enabled scalable operational reporting through secure API-driven backend and synchronisation services.</li>
    <li>Built customer intelligence and engagement analytics workflows using product history, sales-order behaviour, pricing, quantity, contract duration and campaign-interaction data.</li>
    <li>Generated retention, upsell, next-best-product and intent signals, integrating the outputs into <strong>Zoho CRM</strong> to support targeted follow-ups and better customer decision-making.</li>
    <li>Developed a secure customer self-service portal enabling authenticated users to configure products and generate sales orders independently, using a Python backend, JavaScript frontend, Docker, GitHub Actions and AWS hosting.</li>
    <li>Engineered automations across Zoho CRM, Zoho Sign, Zoho Projects and Zoho Cliq, with robust logging, validation and error handling to improve observability, reliability and recoverability.</li>
    <li>Worked closely with stakeholders to translate operational requirements into scalable workflows, documentation and maintainable technical solutions.</li>
  </ul>

  <details>
    <summary><strong>Core stack & tools</strong></summary>
    <p>
      <strong>Languages:</strong> Python, Java, JavaScript, SQL/MySQL, PHP, Deluge<br/>
      <strong>Platforms:</strong> Zoho CRM, Zoho Sign, Zoho Projects, Zoho Cliq, Tekton Zoey, Plesk<br/>
      <strong>Backend & integration:</strong> REST APIs, webhooks, OAuth, secure data synchronisation, validation, logging and error handling<br/>
      <strong>DevOps & cloud:</strong> Docker, GitHub Actions, GitHub, AWS hosting<br/>
      <strong>Analytics:</strong> customer intelligence, engagement analytics, intent scoring, retention and upsell signals
    </p>
  </details>
</div>

<div class="xp-card">
  <h3>Senior Solutions Engineer, IBS Software</h3>
  <p class="xp-meta">
    Apr 2021 – Aug 2024
    <span class="xp-dot">•</span> Kerala, India
    <span class="xp-dot">•</span> Hybrid
  </p>
  <p class="muted"><em>Client: Expedia Group — Airmate flight operations platform</em></p>

  <ul class="xp-points">
    <li>Led the <strong>Runtime Compute Platform</strong> migration for Expedia’s Airmate flight operations system, modernising Java/Kotlin microservices onto a unified <strong>AWS</strong> and <strong>Kubernetes</strong>-based platform.</li>
    <li>Improved scalability, deployment consistency, observability and analytics/BI enablement by aligning services with platform engineering standards.</li>
    <li>Enhanced Airmate reliability and data quality by optimising flight-operations data pipelines, improving validation and strengthening data availability for stakeholders.</li>
    <li>Owned platform delivery across feature development, architecture discussions, code reviews, release quality, production deployments and stakeholder alignment.</li>
    <li>Acted as Scrum Master, leading sprint planning and execution, mentoring junior engineers and translating business requirements into scalable technical solutions.</li>
    <li>Recognised with a <strong>Team Champ Award</strong> for the successful RCP migration and promoted to <strong>Senior Solutions Engineer</strong> for sustained technical leadership and delivery excellence.</li>
  </ul>

  <details>
    <summary><strong>Core stack & tools</strong></summary>
    <p>
      <strong>Languages & frameworks:</strong> Java, Kotlin, Python, JavaScript, ReactJS, microservices<br/>
      <strong>Cloud & DevOps:</strong> AWS, Kubernetes, Docker, Jenkins, Spinnaker, GitHub Actions, Datadog<br/>
      <strong>Data & platform:</strong> SQL, Kafka, data pipelines, validation, observability and BI enablement<br/>
      <strong>Practices:</strong> Agile/Scrum, code reviews, production releases, stakeholder management and mentoring
    </p>
  </details>
</div>

---

## Education {#education}

<div class="xp-card">
  <h3>MSc Business Analytics, University of Nottingham</h3>
  <p class="xp-meta">
    Sep 2024 – Sep 2025
    <span class="xp-dot">•</span> Merit
    <span class="xp-dot">•</span> United Kingdom
  </p>

  <p><span class="xp-chip">Scholarship</span> <strong>South Asia Postgraduate Excellence Award</strong></p>

  <details>
    <summary><strong>Modules and academic focus</strong></summary>
    <ul>
      <li>Machine Learning and Predictive Analytics</li>
      <li>Foundational Business Analytics</li>
      <li>Analytics Specializations and Applications</li>
      <li>Data at Scale: Management, Processing and Visualisation</li>
      <li>Leading Big Data Business Projects</li>
      <li>Supply Chain Planning and Management</li>
      <li>Digital Marketing</li>
    </ul>
    <p>
      Selected work included a distinction-grade dissertation on hotel booking cancellation prediction with geospatial enrichment and a distinction-grade temporal churn prediction project using strict weekly backtesting.
    </p>
  </details>
</div>

<div class="xp-card">
  <h3>B.Tech Electronics & Communication Engineering, Adi Shankara Institute of Engineering and Technology</h3>
  <p class="xp-meta">
    Aug 2016 – Aug 2020
    <span class="xp-dot">•</span> Distinction
    <span class="xp-dot">•</span> India
  </p>

  <details>
    <summary><strong>Capstone project: Kinesics Articulation</strong></summary>
    <p>
      Built a microprocessor-driven system in Python to translate sensor-captured gestures into audible speech, supporting communication for deaf and hard-of-hearing users. Also designed a mobile text-to-speech app using Android Studio and Flutter for accessible real-time communication.
    </p>
  </details>
</div>

---

## Certifications {#certifications}

<div class="xp-card">
  <h3>Professional Certifications</h3>
  <ul class="xp-points">
    <li><strong>Machine Learning Operations (MLOps): Getting Started</strong> — Google Cloud, Nov 2025</li>
    <li><strong>Python for Data Science, AI & Development</strong> — IBM, Nov 2025</li>
    <li><strong>Time Series Forecasting using Python</strong> — Analytics Vidhya, Sep 2025</li>
    <li><strong>Introduction to the OWASP Top 10</strong> — Udemy, Aug 2023</li>
    <li><strong>Certified Secure Developer</strong> — Hack_EDU, July 2022</li>
  </ul>

  <p>
    <a class="btn" href="https://www.linkedin.com/in/karthikrajesh05/details/certifications/" target="_blank" rel="noopener">
      View certifications
      <svg class="ico" viewBox="0 0 24 24" width="16" height="16" aria-hidden="true">
        <path fill="currentColor" d="M14 3h7v7h-2V6.41l-9.29 9.3-1.42-1.42 9.3-9.29H14V3zM5 5h6v2H7v10h10v-4h2v6H5V5z"/>
      </svg>
    </a>
  </p>
</div>
