import { test, expect } from '@playwright/test';
test('inspect MacBook Air details', async ({ page }) => {
 const response = await page.goto('https://www.apple.com/in/macbook-air/', { waitUntil: 'domcontentloaded' });
 expect(response?.ok()).toBeTruthy();
 await expect(page).toHaveURL(/macbook-air/);
 await expect(page.locator('body')).toContainText('MacBook Air');
});