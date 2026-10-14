import { test, expect } from '@playwright/test';
test('find iPhone models', async ({ page }) => {
 const response = await page.goto('https://www.apple.com/in/iphone/', { waitUntil: 'domcontentloaded' });
 expect(response?.ok()).toBeTruthy();
 await expect(page.locator('body')).toContainText('iPhone');
});