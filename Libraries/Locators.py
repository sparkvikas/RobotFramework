from datetime import date

url = "https://172.31.34.183/"
browser = "chrome"
options = "options=add_argument('--ignore-certificate-errors')"





# --------------common locators----------------
BtnNext_class = "class:next"
BtnAddNew_xpath = "//a[@class = 'button']"
BtnConfirmOk_xpath = "//button[@class='swal-button swal-button--confirm' and contains(.,'OK')]"





# ------------------Login page------------------------------------
# locators
TxtUsernameID = "id:usernameOrEmail"
TxtPasswordID = "id:password"
BtnSignInID = "id:sign-in"
#data
username = "admin"
password = "1234567"




#---------------Home Page--------------------
LnkWrangling_id = "id:Data-Wrangling"
LnkConnector_id = "id:Connectors"




# ----------------Connector---------------------------------------
# Locators page 1
TxtSourcename_NAME = "name:source_name"
TxtSourceDesc_NAME = "name:source_description"
DropDown_xpath = "//div[@class='Select-placeholder']"
ConnectorType_xpath = "//div[@role = 'option' and text()='DATABASE_MYSQL']"
DataType_xpath = "//*[@for='structured-data']"

# Locators page 2
TxtHost_name = "name:host_ip"
TxtPort_name = "name:port"
TxtUserId_name = "name:user_id"
TxtPassword_name = "name:password"
TxtDatabase_name = "name:database_name"
BtnTestConnection_xpath = "//button[contains(text(), 'Test Connection')]"

# Data
myDate = date.today()
dateString = str(myDate.month) + str(myDate.day) + str(myDate.year)
SourceName = f"src_mysql_{dateString}"
Sourcedesc = f"mysql for {dateString} test"
ImgEdit_xpath = f"//*[text()='{SourceName}']/parent::tr/td[8]/ul/li[1]/a/img"
sourceDescEdit = f"{Sourcedesc} edited"

hostip = "18.217.184.52"
port = "3306"
user_id = "root"
password_Connector = "liveobjects"
database_name = "customer"
