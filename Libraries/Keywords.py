import time
from datetime import date

from selenium import webdriver

options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
#options.add_argument("headless")
driver = webdriver.Chrome(options=options)


def Close_app():
    driver.quit()


def enter_username(username):
    driver.find_element_by_id("usernameOrEmail").clear()
    driver.find_element_by_id("usernameOrEmail").send_keys(username)

def enter_password(password):
    driver.find_element_by_id("password").clear()
    driver.find_element_by_id("password").send_keys(password)

def click_login():
    driver.find_element_by_xpath("//button[@type='submit']").click()

def Login_user(username, password):
    enter_username(username)
    enter_password(password)
    click_login()

def add_new():
    driver.find_element_by_xpath("//button[@class='button']").click()


def create_scenario(scenarioName, scenarioDescription):
    add_new()
    driver.find_element_by_name("name").clear()
    driver.find_element_by_name("name").send_keys(scenarioName)
    driver.find_element_by_name("description").clear()
    driver.find_element_by_name("description").send_keys(scenarioDescription)
    time.sleep(2)
    driver.find_element_by_xpath("//button[@class='next']").click()

def clicK_edit(name , td):
    edit_xpath = f"//*[text()='{name}']/parent::tr/td[{td}]/ul/li[1]/a/img"










