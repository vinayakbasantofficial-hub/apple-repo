import { test, expect } from '@playwright/test';
test('find MacBook Air', async ({ page }) => {
 const response = await page.goto('https://www.apple.com/in/macbook-air/', { waitUntil: 'domcontentloaded' });
 expect(response?.ok()).toBeTruthy();
 await expect(page.locator('body')).toContainText('MacBook Air');
});