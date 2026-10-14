import { test, expect } from '@playwright/test';

test('Review the MacBook Air overview on Apple India', async ({ page }) => {
  const response = await page.goto('https://www.apple.com/in/macbook-air/', {
    waitUntil: 'domcontentloaded',
  });
  expect(response?.ok()).toBe(true);
  await expect(page).toHaveURL(/\/in\/macbook-air\//);
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await expect(body).toContainText('MacBook Air');
  await expect(page.getByRole('heading', { level: 1 }).first()).toBeVisible();
  await expect(page).toHaveTitle(/MacBook Air/i);
  expect((await body.innerText()).trim().length).toBeGreaterThan(50);
  expect(await page.locator('a:visible').count()).toBeGreaterThan(0);
});