# Violet project rules

- Target Linux desktop Obsidian only. Keep the theme static CSS; Dart Sass is build time only.
- `src/theme.scss` is the sole Sass entry point. Commit the generated root `theme.css` with `manifest.json`.
- Scope interface rules to `body.mod-linux:not(.is-mobile)` and use `--violet-` for every custom token.
- Limit styling to the application shell: workspace panels, tabs, navigation, ribbon, status bar, menus, prompts, and modals.
- Do not style Markdown headings, paragraphs, lists, tasks, tables, code, callouts, quotes, fonts, line heights, or paragraph spacing. Do not change Obsidian content tokens globally.
- Do not add plugin compatibility layers, mobile rules, Style Settings, JavaScript, React, Tailwind, or Vite.
- Keep the central editor and reading surface fully opaque. Treat CSS alpha, Electron window transparency, and niri blur as separate mechanisms.
- Do not patch `app.asar` or install an Obsidian plugin automatically to make glass work. Document a proposed host adaptation, risk, and rollback for a user decision first.
- Test in the isolated `test-vault`; capture real Obsidian DOM, computed styles, and screenshots in both edit and reading modes.
- Do not push to GitHub or publish a release unless explicitly requested.
