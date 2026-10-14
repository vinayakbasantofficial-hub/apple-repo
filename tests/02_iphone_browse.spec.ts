import { test, expect } from '@playwright/test';
test('browse iPhone collection', async ({ page }) => {
 const response = await page.goto('https://www.apple.com/in/iphone/', { waitUntil: 'domcontentloaded' });
 expect(response?.ok()).toBeTruthy();
 await expect(page.locator('body')).toContainText('iPhone');
});