import { test, expect } from '@playwright/test';

test('Identify the MacBook Air section and its public navigation', async ({ page }, testInfo) => {
  // Given I am browsing Apple's India website without signing in
  // When I open the official MacBook Air product page
  const response = await page.goto('https://www.apple.com/in/macbook-air/', {
    waitUntil: 'load',
    timeout: 45000,
  });
  await page.screenshot({ path: testInfo.outputPath('evidence-navigation.png') });

  // Then the requested product page should return a successful response
  expect(response?.ok()).toBeTruthy();

  // And the browser should show the requested Apple India product route
  await expect(page).toHaveURL(/\/in\/macbook-air\//);

  // And the page body should be loaded and visible
  const body = page.locator('body');
  await expect(body).toBeVisible();
  await page.screenshot({ path: testInfo.outputPath('evidence-body-loaded.png') });

  // And the primary heading should be displayed
  const heading = page.locator('h1').first();
  await expect(heading).toBeVisible();

  // And the visible page content should identify MacBook Air
  await expect(body).toContainText(/MacBook Air/i);

  // And the document title should refer to MacBook Air
  await expect(page).toHaveTitle(/MacBook Air/i);

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