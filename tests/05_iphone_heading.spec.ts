import { test, expect } from '@playwright/test';

test('Open the iPad catalogue and confirm browsing information', async ({ page }, testInfo) => {
  // Given I am using a browser without an authenticated Apple Account
  // When I open "https://www.apple.com/in/ipad/"
  const response = await page.goto('https://www.apple.com/in/ipad/');
  await page.screenshot({ path: testInfo.outputPath('evidence-navigation.png') });

  // Then the iPad catalogue should return a successful response
  expect(response?.ok()).toBeTruthy();

  // And the address bar should include "/in/ipad/"
  expect(page.url()).toContain('/in/ipad/');

  // And the page body should be loaded and visible
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await page.screenshot({ path: testInfo.outputPath('evidence-body-loaded.png') });

  // And a primary heading should be displayed
  const heading = page.locator('h1').first();
  await expect(heading).toBeVisible();

  // And the visible body should mention "iPad"
  await expect(body).toContainText(/iPad/i);

  // And the browser document title should refer to "iPad"
  await expect(page).toHaveTitle(/iPad/i);

  // And the page should offer links for further product exploration
  const links = page.locator('a[href*="/ipad"]');
  expect(await links.count()).toBeGreaterThan(0);

  // And the product range should be readable without signing in
  const productSection = page.locator('section').first();
  await expect(productSection).toBeVisible();

  // And I should be able to continue researching the iPad family
  await page.screenshot({ path: testInfo.outputPath('evidence-research.png') });
  const isResearchable = await page.evaluate(() => document.readyState === 'complete');
  if (!isResearchable) {
    throw new Error('Page failed to reach a researchable state');
  }
}); for playright tescase sthis type of code is running so please check and update playright codes
