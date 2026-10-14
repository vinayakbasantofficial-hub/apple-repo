import { test, expect } from '@playwright/test';

test('Discover the public iPhone catalogue and its browsing links', async ({ page }, testInfo) => {
  // Given a customer is browsing without signing in
  // When the official Apple India smartphone catalogue is opened
  const response = await page.goto('https://www.apple.com/in/iphone/', { waitUntil: 'load', timeout: 45000 });
  await page.screenshot({ path: testInfo.outputPath('evidence-navigation.png') });

  // Then the website should load the iPhone page successfully
  expect(response?.ok()).toBeTruthy();
  await expect(page).toHaveURL(/\/in\/iphone\//);

  // And the main content and heading should be visible
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await page.screenshot({ path: testInfo.outputPath('evidence-body-loaded.png') });
  await expect(page.locator('h1').first()).toBeVisible();

  // And the page should identify the iPhone product family
  await expect(body).toContainText(/iPhone/i);
  await expect(page).toHaveTitle(/iPhone/i);

  // And visitors should find links to explore more product information
  expect(await page.locator('a[href]').count()).toBeGreaterThan(0);
  expect((await body.innerText()).trim().length).toBeGreaterThan(50);

  // And the public catalogue should still be readable without login
  await page.screenshot({ path: testInfo.outputPath('evidence-research.png') });
});