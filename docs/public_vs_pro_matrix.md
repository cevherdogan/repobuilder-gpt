# 📘 Public vs Pro Edition Guide

This document clearly outlines the differences between the `repobuilder-gpt` and `repobuilder-gpt-pro` projects.
It aims to detail the functional distinctions, target audiences, and practical use cases of each version.

For a high-level summary, always start with the `README.md` file in each repository. For this repo it is at [README.md](../README.md)

---

## 📜 Key Design Notes Based on Implementation Questions

Below are important considerations and insights raised during development and planning. These help preserve architectural intentions and ensure design integrity:

### 🔐 Branching Rules & Isolation
- Client-specific branches (e.g., `client-alpha`) **must never** be merged into `main`.
- Every client/product/integration branch is fully isolated and tracked independently.
- Public content and templates live only in `main`, while demos may optionally exist in `demo-*` branches.

### 📦 Zip Output Rules
- **Public version does not produce a downloadable `.zip`**, only demonstrates structure.
- **Pro version packages** output using a custom `zip_engine/` with `build_and_package.py`.
- The packaging is designed to work with isolated product trees or release folders.

### 📜 Licensing Enforcement
- Public repo licensed under MIT; all public demos and educational materials follow this model.
- Commercial repo marked proprietary; customers may not redistribute or reuse without permission.

### 🧠 GPT Behavior Expectations
- GPT must not expose YAML configuration, prompt strategies, or internal structure unless explicitly permitted.
- Public GPT replies with prefilled examples; Pro GPT can generate ZIPs from flexible prompt inputs.
- Default response format should be Markdown, unless used programmatically.

### 🔄 Integration Strategy
- Pro version is future-proofed for CI/CD, webhooks, and API-based configuration deployment.
- Merged release branches will be documented in `commercial_notes.md`.

### 🔍 Audit Trail & Logging
- Every GPT usage can optionally generate a `build_manifest.json` for audit and traceability.

---

## 🌟 SEO & Outreach Strategy

For SEO-aligned releases and AI-powered article tracking, refer to the new additions in the SEO Hub:

- [SEO Hub README](../../articles/seo_hub/README.md)
- [LinkedIn Announcement Message](../../articles/medium/01-the-idea/linkedin_announcement.md)
- [Medium Article Tracker](../../articles/seo_hub/article_tracker.md)
- [WhatsApp Announcement Snippets](../../articles/seo_hub/whatsapp_announcement.md)

These documents help ensure that outreach, backlinks, and engagement are strategically aligned across platforms.

---

## 💖 WhatsApp Announcement

**🧠🚀 NEW GPT-Powered Tool for Developers & AI Builders!**

Hi 👋  
We just released **RepoBuilderGPT** — a smart, AI-powered tool to scaffold entire GitHub repos from your ideas. It comes in two flavors:

🔓 **Public version:**  
- Generates open-source repo templates  
- ESG & FinTech demo prompts  
- MIT licensed & free to explore  
📌 [Public Repo](https://github.com/cevherdogan/repobuilder-gpt)

🔒 **Pro version (invite-only):**  
- Builds client-ready packages  
- Webhook + CI/CD ready  
- Custom GPT config, branch isolation  
📌 [Pro Overview](https://github.com/cevherdogan/repobuilder-gpt-pro) *(invite-only, DM me)*

Let me know if you’d like to collaborate or explore how GPT can automate your repo workflows. This is just the beginning 🎯

#AI #DevTools #opensource #automation #RepoBuilderGPT

---

## ☀️ Purpose
- **Public Edition:** Educational examples, GPT templates, and basic repo generation tools for the open-source community.
- **Pro Edition:** Advanced product configurations, zip packaging, integration code, and release management for commercial clients.

## 📊 Comparison Table

| Feature                          | Public (`repobuilder-gpt`)                              | Pro (`repobuilder-gpt-pro`)                                  |
|----------------------------------|----------------------------------------------------------|---------------------------------------------------------------|
| 🌟 Purpose                        | Awareness, demos, community contribution                 | Client solutions, integrations, professional delivery         |
| 📂 Structure                      | Basic repo skeleton, templates, usage examples           | Product branches, integration branches, release configs       |
| 🧠 GPT Configuration              | Simple YAML definition, example prompts                  | Extended schema, parameterized requests, build manifest       |
| 📜 Licensing                      | MIT / CC-BY                                               | Commercial / Proprietary                                      |
| 💪 Demo / Sample Code             | ESG and FinTech scenarios                                | Real client adaptations, private payloads                     |
| ⚙️ Script & Automation            | Preview CLI and initial commit/tag script                | Zip packaging engine, webhook trigger, automated builds       |
| 📦 Zip Output                     | ❌ (demonstration only)                                  | ✅ (fully configured downloadable bundle)                      |
| 🔐 Client Confidentiality         | Not required                                              | Critical – each product branch isolated                       |
| 🚀 Release Strategy               | Manual GitHub Releases                                   | Branch-based configuration release management                 |

## ✅ GPT Engine Feature Comparison

| Feature                        | Public GPT (`RepoBuilderGPT`)     | Pro GPT (`RepoBuilderGPT Pro`)     |
|-------------------------------|-----------------------------------|------------------------------------|
| Demo structure generation     | ✅                                | ✅                                 |
| Custom config creation        | 🔒 (limited to examples)          | ✅ (fully parameterized)           |
| Zip output delivery           | ❌ (simulation only)              | ✅ (complete file system zip)      |
| API trigger support           | ❌                                | ✅                                 |
| Client-specific examples      | ❌                                | ✅ (anonymized if needed)          |
| License                       | MIT                               | Commercial (Proprietary)          |

## 🛠️ Documentation Plan

### Public (`repobuilder-gpt`)
- `README.md`: General introduction and usage overview
- `usage_guide.md`: Steps to generate repo using GPT
- `examples/`: ESG and FinTech input scenarios
- `templates/`: Structure templates and dual-license samples
- `scripts/init_commit_and_tag.sh`: Smart commit-tag automation script
- `articles/medium/01-the-idea/`: Markdown article, cover, LinkedIn message
- `articles/seo_hub/`: Article tracker, relationship map, SEO tracking tools
  - `whatsapp_announcement.md`: Announcements for messaging platforms
  - Files prefixed with `whatsapp_` will trigger webhook-based automation via GitHub Actions

### Pro (`repobuilder-gpt-pro`)
- `commercial_notes.md`: Product branching and integration strategy
- `zip_engine/`: Packaging module
- `deploy/`: Webhook trigger script
- `integrations/`: GitHub Actions & OpenAI API integration folders
- `client_specific_payload.json`: Sample client-specific configuration

---

This structure ensures users can choose the edition that fits their needs, or transition from the public edition to the commercial one with confidence.

For a high-level summary, always start with the `README.md` file in each repository. For this repo it is at [README.md](../README.md)


