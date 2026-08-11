#set page(

  margin: (x: 0.7in, top: auto, bottom: auto),
  paper: "us-letter",
  fill: white,
)

#set text(
  font: ("Inter",),
  size: 9.5pt,
  fill: rgb("#222222"),
)

#set par(justify: true, leading: 0.65em)

#let brand-color = rgb("#1a365d")
#let muted-gray = rgb("#555555")
#let border-gray = rgb("#dddddd")

// URLS
#let my-email = "faysaadi@pm.me"
#let my-linkedin = "linkedin.com/in/fayez-saadi"
#let my-github = "github.com/fayezosaadi"

// ===== CUSTOM BULLET =====
#let bullet-item(body) = {
  v(-0.1em)
  list(marker: text(fill: brand-color)[•], spacing: 0.45em)[#body]
}

// ===== SECTION HEADER =====
#let section(title) = {
  v(1.6em, weak: true)
  grid(
    columns: (auto, 1fr),
    gutter: 0.8em,
    align(left + horizon)[#text(size: 11pt, weight: "bold", fill: brand-color, tracking: 0.6pt, upper(title))],
    align(left + horizon)[#line(length: 100%, stroke: 0.75pt + border-gray)],
  )
  v(0.6em)
}

// ===== JOB ENTRY =====
#let job-entry(role, company, dates) = {
  v(0.35em)
  block(width: 100%, breakable: false)[
    #text(weight: "bold", size: 10pt, fill: brand-color)[#role]
    #h(0.4em) | #h(0.4em)
    #text(style: "italic", size: 9.5pt, fill: rgb("#333333"))[#company]
    #h(1fr)
    #text(weight: "semibold", size: 9pt, fill: muted-gray)[#dates]
  ]
  v(0.25em)
}

// ===== REORGANIZED HEADER BLOCK (Centered Executive Style) =====
#align(center)[
  #text(size: 22pt, weight: "bold", fill: brand-color, tracking: 0.5pt)[FAY SAADI] \
  #v(0.1em)
  #text(size: 10pt, weight: "medium", fill: rgb("#444444"), tracking: 0.5pt)[Senior Software Architect] \
  #v(0.4em)
  #text(size: 9pt, fill: muted-gray)[
    #link("mailto:" + my-email)[#my-email] • 778-251-2517 • Calgary, AB • #link("https://" + my-linkedin)[LinkedIn] •
    #link("https://" + my-github)[GitHub]
  ]
]

#v(0.4em)
#line(length: 100%, stroke: 0.5pt + border-gray)
#v(0.5em)

// ===== SUMMARY =====
#section("Summary")
Senior Software Architect with 8+ years of experience architecting cloud-native distributed systems. Adept at bridging
technical implementation and business strategy to drive organizational impact.

// ===== WORK EXPERIENCE =====
#section("Work Experience")

#job-entry("Senior Software Engineer", "MNP", "2024 - Current")
#bullet-item[Architecting an enterprise-grade *Generative AI solution* on *Microsoft Foundry*, establishing design patterns
  and infrastructure patterns for *multi-agent workflow systems*. Leading cross-functional collaboration with Architecture
  and DevOps to configure secure *VNet/subnet* environments and enable *OBO (On-Behalf-Of)* actions via *MCP tools*. Currently
  building the foundational agent service patterns that will scale across the organization.]
#bullet-item[Defining the technical roadmap and development patterns for *agentic systems* across the organization,
  including infrastructure provisioning, secure networking, and *MCP tool integration*. Partnering with stakeholders to
  align AI capabilities with business objectives.]
#bullet-item[Prototyped a *Google Zanzibar-inspired authorization layer* with *OpenFGA*, establishing a *relationship-based
  access control (ReBAC)*. The POC is now being adopted as the foundation for a managed *Okta/Auth0* implementation, with
  my architectural patterns informing the production rollout.]
#bullet-item[Designed and implemented an *event-driven notification system* using *.NET*, *RabbitMQ*, and *CosmosDB*. Processed
  *50,000+* daily events in staging; production rollout paused pending infrastructure cost review.]

#job-entry("Technical Team Lead - Backend", "Legible", "2021 - 2024")
#bullet-item[Led a 4-engineer team to build a *real-time reporting pipeline* using *Kafka*, *Scala*, *Go*, and
  *Kubernetes*, processing 10M+ publisher events daily and enabling same-day analytics for enterprise clients.]
#bullet-item[Architected a *real-time ingestion system* that boosted data processing throughput by *500%*, reducing
  latency from 15 minutes to *under 90 seconds*.]
#bullet-item[Deployed an *OpenID Connect/OAuth2* authentication solution orchestrating zero-downtime migration of
  10,000+ users across 5 services, eliminating a critical security vulnerability.]
#bullet-item[Served as technical liaison between engineering, product, and executive stakeholders, translating complex
  requirements into business value and influencing roadmap priorities.]

#job-entry("Software Engineer", "Bench Accounting", "2020 - 2021")
#bullet-item[Developed tools used by 200+ bookkeepers managing financial data for thousands of clients, gaining deep
  exposure to financial services workflows.]
#bullet-item[Built banking integrations using *Scala*, *PostgreSQL*, *Kubernetes*, and *AWS* for seamless transaction
  processing.]

#job-entry("Backend Software Engineer", "Kater", "2019 - 2020")
#bullet-item[Built ride-hailing APIs optimizing driver location and reducing trip match time using *NodeJS/TypeScript*,
  *MongoDB*, and *CQRS/ES*.]

#job-entry("Full Stack Software Engineer", "CTO.ai", "2017 - 2019")
#bullet-item[Created GitHub-integrated APIs tracking developer performance metrics using *NodeJS*, *VueJS*, and
  *PostgreSQL*.]
#bullet-item[Built automation workflows and webhooks to surface engineering insights directly within developer tooling,
  improving team visibility into delivery velocity.]

#job-entry("Integration Engineer", "Ericsson", "2014 - 2016")
#bullet-item[Integrated *LTE infrastructure* for ISPs across multiple regions, enabling mobile broadband services for
  millions of end users.]
#bullet-item[Coordinated with cross-functional teams to validate network configurations, perform acceptance testing, and
  deliver handover documentation to client operations teams.]

// ===== TECHNOLOGIES =====
#section("Technologies & Languages")
#set par(leading: 0.9em)
*Languages:* NodeJS (JavaScript, TypeScript), Rust, .NET (C\#), JVM (Scala, Java), SQL \
*Cloud & DevOps:* Azure (AI Foundry, Functions, Blob Storage, Document Intelligence, AI Search), AWS, Kubernetes,
Docker, CI/CD (GitHub Actions, Jenkins), IaC (Terraform, Pulumi) \
*Databases & Messaging:* PostgreSQL, CosmosDB, MongoDB, Elasticsearch, RabbitMQ, Kafka, MQTT \
*Architectures:* Microservices, Event-Driven Design, DDD, CQRS/ES, RESTful APIs

// ===== EDUCATION =====
#section("Education")
#job-entry("Diploma in Web Development", "Lighthouse Labs", "2017")
#job-entry("BSc in Electrical and Electronic Systems Engineering", "Modern Sciences and Arts University", "2008 - 2014")

// ===== ADDITIONAL EXPERIENCE =====
#section("Additional Experience")
#job-entry("Mentor & Project Evaluator", "Lighthouse Labs", "2018 - 2021")
#bullet-item[Mentored 50+ junior developers through bootcamp curriculum, focusing on JavaScript, React, and NodeJS best
  practices.]
