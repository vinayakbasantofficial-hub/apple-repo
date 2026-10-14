import { test, expect } from '@playwright/test';

test('Explore the MacBook Air details', async ({ page }) => {
  // Open the public product area without a sign-in session.
  const response = await page.goto('https://www.apple.com/in/macbook-air/', {
    waitUntil: 'domcontentloaded',
  });
  expect(response?.ok()).toBe(true);

  // Verify page identity and content a shopper can see.
  await expect(page).toHaveURL(/\/in\/macbook-air\//);
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await expect(body).toContainText('MacBook Air');
  await expect(page.getByRole('heading', { level: 1 }).first()).toBeVisible();

  // Check there is readable content and navigation to explore further.
  await expect(page).toHaveTitle(/MacBook Air/i);
  expect((await body.innerText()).trim().length).toBeGreaterThan(50);
  expect(await page.locator('a:visible').count()).toBeGreaterThan(0);
});