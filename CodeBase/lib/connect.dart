import 'package:puppeteer/puppeteer.dart';
void autoconnect () async {
  final browser=await puppeteer.launch(headless: false);
  final page=await browser.newPage();
  await page.goto('https://www.linkedin.com/in/dhanvi-shah-6995a31a3/');
  final data=await page.$('ember.artdeco-button artdeco-button--2 artdeco-button--primary ember-view');
  await data.click();
  await Future.delayed(Duration(seconds: 20));
  await browser.close();
}
