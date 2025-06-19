# 📘 Public vs Pro Edition Guide

This document clearly outlines the differences between the `repobuilder-gpt` and `repobuilder-gpt-pro` projects.
It aims to detail the functional distinctions, target audiences, and practical use cases of each version.

## 🎯 Purpose
- **Public Edition:** Educational examples, GPT templates, and basic repo generation tools for the open-source community.
- **Pro Edition:** Advanced product configurations, zip packaging, integration code, and release management for commercial clients.

## 📊 Comparison Table

| Feature                          | Public (`repobuilder-gpt`)                              | Pro (`repobuilder-gpt-pro`)                                  |
|----------------------------------|----------------------------------------------------------|---------------------------------------------------------------|
| 🎯 Purpose                        | Awareness, demos, community contribution                 | Client solutions, integrations, professional delivery         |
| 📂 Structure                      | Basic repo skeleton, templates, usage examples           | Product branches, integration branches, release configs       |
| 🧠 GPT Configuration              | Simple YAML definition, example prompts                  | Extended schema, parameterized requests, build manifest       |
| 📜 Licensing                      | MIT / CC-BY                                               | Commercial / Proprietary                                      |
| 🧪 Demo / Sample Code             | ESG and FinTech scenarios                                | Real client adaptations, private payloads                     |
| ⚙️ Script & Automation            | Preview CLI and initial commit/tag script                | Zip packaging engine, webhook trigger, automated builds       |
| 📦 Zip Output                     | ❌ (demonstration only)                                  | ✅ (fully configured downloadable bundle)                      |
| 🔐 Client Confidentiality         | Not required                                              | Critical – each product branch isolated                       |
| 🚀 Release Strategy               | Manual GitHub Releases                                   | Branch-based configuration release management                 |

## 🛠️ Documentation Plan

### Public (`repobuilder-gpt`)
- `README.md`: General introduction and usage overview
- `usage_guide.md`: Steps to generate repo using GPT
- `examples/`: ESG and FinTech input scenarios
- `templates/`: Structure templates and dual-license samples
- `scripts/init_commit_and_tag.sh`: Smart commit-tag automation script

### Pro (`repobuilder-gpt-pro`)
- `commercial_notes.md`: Product branching and integration strategy
- `zip_engine/`: Packaging module
- `deploy/`: Webhook trigger script
- `integrations/`: GitHub Actions & OpenAI API integration folders
- `client_specific_payload.json`: Sample client-specific configuration


