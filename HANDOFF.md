# HANDOFF — ehsank.com redesign

_Last updated: 2026-10-01_

## Current state

**2026-10-01 (rev4) — CV/Scholar refresh + "Not accepting new students" notice: LIVE.** Committed as `c5e69cb`
on `master`, pushed, and Netlify-deployed; verified live (home + avatar 200, notice/new stats/new grant present,
no stale strings). See the rev4 entry in the Revision log. The paragraphs below describe the July 2026 deploy.

**LIVE.** The 2026 redesign is deployed to production at **https://ehsank.com/** (merged to `master` and pushed
2026-07-06; Netlify auto-deployed). Verified live: home + `/avatar.jpg` return 200, correct `<title>`, all
content edits present, all removed items absent. The previous Hugo site is fully recoverable via git history
(revert the deploy commits) or Netlify's "Publish deploy" on a prior Hugo build.

Deploy commits on `master`: `8ddc53d` (static site + netlify.toml static-serve), `1b69b6e` (_redirects attempt),
`199911b` (removed the non-working catch-all redirect — see note below). `.claude/` remains untracked (do not commit).

**Redirect note:** a `/* -> / 301` catch-all (old links → home) was attempted via both `netlify.toml` and a
`_redirects` file; Netlify did **not** honor it in this no-build static-serve setup (unknown paths kept 404-ing).
It was removed to keep config honest. Unknown/old paths now return a standard Netlify 404 — acceptable, since the
previous one-pager had no real sub-pages. If old-link forwarding is ever wanted, investigate via the Netlify
dashboard (redirect rules there, or confirm the deploy is reading the publish-dir `_redirects`).

- **Deployed site source:** `redesign-preview/index.html` + `redesign-preview/avatar.jpg`
  — one-page, self-contained (inline CSS/JS, system fonts, inline SVG icons), only external ref is `avatar.jpg`.
  Open directly in a browser to review.
- **Hosted review copy (photo embedded):** https://claude.ai/code/artifact/c190d0c4-3248-49db-9563-0893b1fb6598
- Design direction: "Institutional Elegance" — ivory/navy/oxblood/bronze, serif display, editorial ledger styling.

## How it was produced (for context)

1. Content extracted from the CV (`E:\OneDrive - UBC\Admin docs\CV\CV-UBC\CV Karim (May 15, 2026).docx`)
   by 6 parallel agents into structured JSON, then consolidated into a canonical copy deck. Every stat traces
   to the CV (134 refereed articles → "130+", $1.29M PI funding, 36 trainees, h-index 25, etc.).
2. Four design variants built; judged by a 3-lens panel (visual / academic credibility / UX-code) over
   32 section screenshots + source. Totals: A 23.3, C 21.5, B 19.8, D 16.8 (of 30).
3. Winner (A) synthesized with grafts from the others (At-a-glance sidebar, sourced metrics strip, photo
   credential caption, semantic grants table, progressive enhancement, prospective-students CTA) plus a new
   News & Highlights section; all judged defects fixed.
4. Verified: no horizontal scroll at 390px, full content with JS disabled, print renders, WCAG AA contrast,
   no console errors, clean anchors/IDs/heading order.

Intermediate artifacts (copy deck `digest/content-brief.md`, variants, screenshots, judge verdicts) live in the
session scratchpad `C:\Users\wilds\AppData\Local\Temp\claude\E--GitHub-ehsankarim\27d03374-37c6-4cee-b387-21ac3f455a2e\scratchpad`
— ephemeral; the copy deck is worth copying into the repo if further content work is planned.

## Revision log

- **2026-07-06 rev2** (owner-requested content edits, all applied to `redesign-preview/index.html`,
  scratchpad `final.html`, and the artifact):
  1. Prospective-students block reframed from an open invitation to a measured one — supervision is
     capacity/funding-limited, contact is not a substitute for formal application, and applicants must
     email a CV (with publication list), unofficial transcript, and list of references.
  2. Photo caption: dropped "Tenured 2025", added "AMS UBC OER Champion 2024–2025".
  3. Removed "All titles are listed on his Amazon author page." (Amazon icon link in footer/socials kept.)
  4. Removed the 5-item "notable student outcomes & awards" list (named-student awards) from Trainees.
  5. Removed the *NHANES Mortality Analysis* book from Books & open textbooks.
  6. **Judgment call:** removing NHANES left 6 books shown, so the hero stat was changed 7 → **6** for
     internal consistency (list is presented as complete, not "selected"). The CV still lists 7 authored
     books — if the owner prefers to keep "7" and count the unlisted NHANES title, revert that one number.
  - Also dropped the drop-cap on the About paragraph's first letter and added an SVG data-URI favicon
    (both from the first review pass). No layout regressions: re-verified no horizontal scroll at 1440/390,
    no console errors, no dead anchors/dup IDs.
- **2026-07-06 rev3:** Removed the Contact invitation sentence "Questions about research, collaboration, or
  graduate supervision?" (the email + "Get in touch — email is the fastest way to reach him." note remain).
- **2026-10-01 rev4** (owner request: refresh from CV/Scholar; flag no capacity for new students "until otherwise
  stated in this website"). Sources: `CV Karim (July 30, 2026).docx` (saved 2026-08-03; header still says May 15),
  Google Scholar snapshot 2026-10-01, and the owner's MS Canada PI CV (`H_CV_Karim_Discovery_PI.pdf`, Sept 2026).
  **The CV's summary tables were NOT refreshed by the owner** (still 21/33/80 = 134 articles, 591,359 competitive
  operating, Scholar May 15) — all figures were recounted from the itemized lists. Process: 7-agent evidence-cited
  audit → edits → 4-lens adversarial verification (fact-check / staleness / intake notice / technical+links).
  1. **Intake closed:** hero CTA "Prospective students" replaced by a status chip ("● Not accepting new students",
     top of hero text, first screen on phones) → `#prospective`; the Trainees section now *opens* with the notice
     ("in effect since October 2026"; scope = prospective MSc/PhD in SPPH + Statistics incl. visiting graduate
     students; asks people not to send supervision inquiries; links to SPPH "looking for a supervisor" PhD/MSc
     pages and UBC Stats graduate admissions). Contact note rewritten to point to the notice. Application checklist
     + mailto invitation removed. **To reopen intake:** remove the `.intake-chip` link and rewrite `#prospective`.
  2. Stats: publications 130+ → 140+ (141 articles incl. 1 in press; proceedings 13 → 16); citations 2,400+ →
     2,700+; h-index 25 → 27; invited presentations 55 → 58; PI funding $1.29M → **$1.32M** (CV summary omitted
     the sole-PI MS Canada Catalyst grant $29,976 that is itemized in the PI table).
  3. Funding: added CIHR Project Grant 2026–2031 $794,990 (co-PI, with Nosyk/Dennis/Murray); STRIVE and the new
     grant marked "Co-PI"; caption → "Principal or Co-Principal Investigator"; intro adds "$1.59M as co-PI".
  4. News fully refreshed (7 items, newest first). **Fixed a live error:** the May 2026 AI/LLM workshop was at
     the SSC Annual Meeting (62 participants), not SER as the May CV had said.
  5. Other fixes: dead ML4PH link (404) → HDSx course site; SPPH 604 contact hours wording; "completed theses …
     comorbidity index" (Frank's PhD is in progress); AJE 2025 title "epidemiologic"; JAMA 2024 vol/pages;
     SPPH 381H "400-level" → "Undergraduate"; MEDI 504A years; 2 new 2026 selected pubs (COEPH invited review;
     TAS 2026 LASSO); book chapter (Chapter 8, 2026, DOI …-8; imprint is Chapman & Hall/CRC, not Routledge as
     the CV says); research themes add target trial emulation, plasmode benchmarking, survey-weighted TMLE, OUD
     TTE program; Service: SSC sessions every year since 2023, CSEB 2027 scientific committee, 200+ reviews,
     "Grant panels" → "Grant review"; colophon → October 2026. Dead CSS removed; two AA contrast fixes.

## Outstanding (priority order)

0. ~~Commit + push rev4~~ — **DONE** (`c5e69cb`, live 2026-10-01).
   Optional items deliberately NOT applied (secondary-source-only or owner's call): "Stanford" placement and
   2026 ECTRIMS fellowship (MS Canada CV only); micro-certificate co-PI grant $45,030 (MS Canada CV only);
   "1M+ YouTube views"; new `svytmle` R package (on GitHub, not in CV); "Trainees supervised" → "mentored"
   (14 of 22 are committee roles); NSERC DG end 2025 (UBC CV) vs 04/2026 (MS Canada CV) — site keeps 2025.
   CV hygiene for the owner: refresh summary tables; add Catalyst to the PI total; chapter imprint; ML4PH link.
1. ~~Owner review~~ / ~~go live~~ — **DONE** (live at ehsank.com as of 2026-07-06).
2. Optional follow-ups the owner may still want: the "6 vs 7 books" count (see rev2 note — currently 6),
   and whether to forward old inbound links (see redirect note above).
3. Small enhancements discussed but not built: GA4 (old site has dead UA-164587756-1), og:image,
   publication DOI links per entry (deck has DOIs for all 12 selected pubs — currently only some are linked).
4. `.claude/launch.json` has two static-server configs (`variants-preview` :8735 scratchpad, `redesign-preview`
   :8736 repo folder) — dev convenience only; `.claude/` is untracked and should NOT be committed.

## Hosting & deployment (verified 2026-07-06)

**ehsank.com is served by Netlify, not GitHub Pages** (the earlier assumption was wrong). Evidence:
- DNS: nameservers are NS1 (`dns1.p05.nsone.net`), SOA `domains+netlify.netlify.com`; apex A-records
  `52.52.192.191` / `13.52.188.95` are Netlify's load balancer (GitHub Pages would be `185.199.108–111.153`).
- Live headers: `Server: Netlify`, `X-Nf-Request-Id`, `Cache-Status: "Netlify Edge"`.
- Repo: `netlify.toml` present; **no** `CNAME` file, **no** `gh-pages` branch.
- Netlify is connected to GitHub `ehsanx/ehsankarim` and **auto-deploys on push to `master`**
  (build `command = "hugo"`, publish `public/`).

The current live site is effectively a **one-pager** — `content/` has only `authors/` + `home/` widgets and
`autopubs.code`; there are **no** separate publication/post/talk/project pages (publications are embedded in the
profile and auto-pulled from Google Scholar). So a static replacement loses no deep-linkable sub-pages. The only
functional trade-off: the old auto-updating Scholar publication embed is replaced by a curated selected-pubs list
+ a "view all on Google Scholar" link.

### What's prepped

A local branch **`redesign-2026`** (created off `master`, **not pushed**, production untouched) contains:
- `redesign-preview/index.html` + `avatar.jpg` — the new static one-page site.
- A rewritten root **`netlify.toml`** that makes Netlify serve `redesign-preview/` directly with **no Hugo
  build** (`command` is a no-op, `publish = "redesign-preview"`), plus a catch-all `/* -> / 301` so any stray
  old inbound URL lands on the homepage.

### Go-live options (owner picks)

- **Preview on real Netlify infra first (safe, recommended):** `git push -u origin redesign-2026`. Netlify
  builds a **branch deploy** at `https://redesign-2026--<sitename>.netlify.app` — production stays live and
  unchanged. Review there, then merge to go live.
- **Go live:** merge `redesign-2026` into `master` and push (`git checkout master && git merge redesign-2026 &&
  git push`). Netlify redeploys `ehsank.com` within ~1–2 min.
- **Roll back:** `git revert` the deploy commit on `master` and push (restores the Hugo build config), or use
  Netlify's dashboard "Publish deploy" on the prior deploy for an instant rollback.

Note: if the `redesign-preview/` folder name feels off for production, it's a one-line `publish =` change in
`netlify.toml`; left as-is to match what was reviewed.

## Key links/facts a fresh session needs

- Photo source: `content/authors/admin/avatar.jpg` (1050×750 landscape).
- Canonical copy/bio source: `content/authors/admin/_index.md` (old site) + the CV above.
- Profile URLs (Scholar/ORCID/GitHub/etc.) are all in the preview's footer/hero and in `_index.md`.
