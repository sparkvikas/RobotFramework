import time
from datetime import date

from selenium import webdriver

options = webdriver.ChromeOptions()
options.add_argument('--ignore-certificate-errors')
#options.add_argument("headless")
driver = webdriver.Chrome(options=options)

def Launch_app():
    driver.maximize_window()
    driver.implicitly_wait(30)
    driver.set_page_load_timeout(2000)
    driver.set_script_timeout(2000)
    driver.get("https://172.31.34.183/")

def Close_app():
    driver.quit()

def printhello():
    print("hello")
    driver = webdriver.Chrome()
    driver.get("http://www.google.com")

def enter_username(username):
    driver.find_element_by_id("usernameOrEmail").clear()
    driver.find_element_by_id("usernameOrEmail").send_keys(username)

def enter_password(password):
    driver.find_element_by_id("password").clear()
    driver.find_element_by_id("password").send_keys(password)

def click_login():
    driver.find_element_by_xpath("//button[@type='submit']").click()

def Login_user(username, password):
    time.sleep(10)
    enter_username(username)
    enter_password(password)
    click_login()

def Navigate_to_scenario():
    driver.find_element_by_xpath("//span[contains(text(),'Data Wrangling')]").click()
    driver.find_element_by_xpath("//a[contains(@href,'/scenario')]").click()
    element = driver.find_element_by_xpath("//button[@class='button']")
    assert element.is_displayed()
    time.sleep(2)

def add_new():
    driver.find_element_by_xpath("//button[@class='button']").click()

def Verify_scenario_limit():
    row_count = len(driver.find_elements_by_xpath("//table[@id='scenario']/tbody/tr"))
    print("Initial rows =" + str(row_count))
    i = 0
    myDate = date.today()
    dateString = str(myDate.month) + str(myDate.day) + str(myDate.year)
    scenario_name = "sc_" + dateString
    append = scenario_name
    while row_count <= 5:
        if row_count < 5:
            create_scenario(scenario_name, "scenario limit test")
            driver.find_element_by_xpath("//button[@class='next']").click()

            try:
                element = driver.find_element_by_xpath("//*[@class = 'swal-button swal-button--confirm swal-button--danger']")
                time.sleep(2)
                element.click()
                time.sleep(1)
                driver.back()
                time.sleep(2)
            except:
                row_count = row_count + 1

        else:
            verify_max_limit()
            break
        i = i + 1
        scenario_name = f"{append}_{i}"


def create_scenario(scenarioName, scenarioDescription):
    add_new()
    driver.find_element_by_name("name").clear()
    driver.find_element_by_name("name").send_keys(scenarioName)
    driver.find_element_by_name("description").clear()
    driver.find_element_by_name("description").send_keys(scenarioDescription)
    time.sleep(2)
    driver.find_element_by_xpath("//button[@class='next']").click()

def verify_max_limit():
    add_new()
    time.sleep(4)
    actual_success_message = driver.find_element_by_xpath("//*[@class = 'swal-text']").text
    print(actual_success_message)
    expected_success_message = "Maximum Limit exceed."
    assert expected_success_message == actual_success_message
    driver.find_element_by_xpath("//*[@class = 'swal-button swal-button--confirm']").click()









