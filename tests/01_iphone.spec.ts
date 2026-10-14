import { test, expect } from '@playwright/test';

test('iPhone catalogue loads and can be browsed', async ({ page }) => {
  // A public visitor researches Apple products without logging in.
  const target = 'https://www.apple.com/in/iphone/';
  const response = await page.goto(target, { waitUntil: 'domcontentloaded' });
  expect(response, 'The product page should return a response').not.toBeNull();
  expect(response!.ok(), 'The requested page should load successfully').toBe(true);

  // Confirm this is the requested Apple India catalogue or product section.
  await expect(page).toHaveURL(/\/in\/iphone\/?(?:[?#].*)?$/);
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await expect(body).toContainText('iPhone');
  await expect(page.getByRole('heading', { level: 1 }).first()).toBeVisible();

  // Verify useful content and public navigation remain visible to shoppers.
  expect((await body.innerText()).trim().length).toBeGreaterThan(50);
  const navigationLinks = page.locator('a:visible');
  expect(await navigationLinks.count()).toBeGreaterThan(0);
  await expect(page).toHaveTitle(/iPhone/i);
});