# Apple Demo

Minimal local browser fixture with Playwright tests and Gherkin scenarios.

Run `npm install`, `npx playwright install chromium`, then `npm test`. The local server is started by Playwright.

Gherkin files are inputs for an external Gherkin-to-Playwright conversion pipeline; they are not automatically executed by `npm test`.
