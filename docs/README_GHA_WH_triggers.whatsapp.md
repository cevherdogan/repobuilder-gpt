### 📣 Webhook Trigger – WhatsApp Announcement File

This GitHub Action is designed to **automatically trigger a webhook** whenever the file `whatsapp_announcement.md` under `articles/seo_hub/` is **added or modified** on the `main` branch.

#### ✅ When Does It Trigger?

| Action                                                                                           | Triggers Webhook? |
| ------------------------------------------------------------------------------------------------ | ----------------- |
| Merging a pull request into `main` that adds/updates `articles/seo_hub/whatsapp_announcement.md` | ✅ Yes             |
| Direct push to `main` that modifies `articles/seo_hub/whatsapp_announcement.md`                  | ✅ Yes             |
| Changing other files under `articles/seo_hub/`                                                   | ❌ No              |
| Adding `whatsapp_announcement.md` on a different branch                                          | ❌ No              |
| Updating unrelated parts of the repository                                                       | ❌ No              |

---

#### 💡 Notes

* You can extend this trigger to handle files like `whatsapp_announcement_*.md` using a wildcard: `'articles/seo_hub/whatsapp_announcement_*.md'`
* Add additional filters or conditions to support multilingual or platform-specific messages.

