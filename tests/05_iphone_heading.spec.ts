import { test, expect } from '@playwright/test';

test('Open the iPad catalogue and confirm browsing information', async ({ page }, testInfo) => {
  // Given I am browsing Apple's India website without signing in
  // When I open the official iPad product page
  const response = await page.goto('https://www.apple.com/in/ipad/', {
    waitUntil: 'load',
    timeout: 45000,
  });
  await page.screenshot({ path: testInfo.outputPath('evidence-navigation.png') });

  // Then the requested product page should return a successful response
  expect(response?.ok()).toBeTruthy();

  // And the browser should show the requested Apple India product route
  await expect(page).toHaveURL(/\/in\/ipad\//);

  // And the page body should be loaded and visible
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await page.screenshot({ path: testInfo.outputPath('evidence-body-loaded.png') });

  // And the primary heading should be displayed
  const heading = page.locator('h1').first();
  await expect(heading).toBeVisible();

  // And the visible page content should identify iPad
  await expect(body).toContainText(/iPad/i);

  // And the document title should refer to iPad
  await expect(page).toHaveTitle(/iPad/i);

  // And the page should offer links for further product exploration
  const links = page.locator('a[href]');
  expect(await links.count()).toBeGreaterThan(0);

  // And the product overview should be readable without signing in
  const readableContent = (await body.innerText()).trim();
  expect(readableContent.length).toBeGreaterThan(50);

  // And the customer should be able to continue researching the product
  await expect(heading).toBeVisible();
  await page.screenshot({ path: testInfo.outputPath('evidence-research.png') });
});