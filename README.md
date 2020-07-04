# LoanApp

Home Loan Application - end to end, using Spring Boot, Hibernate and Oracle DB

## File Structure

```code
LoanApp ⋈
┣➝.mvn
┃   ┗➝wrapper
┃       ┣➝MavenWrapperDownloader.java
┃       ┣➝maven-wrapper.jar
┃       ┗➝maven-wrapper.properties
┣➝.settings
┃   ┣➝org.eclipse.core.resources.prefs
┃   ┣➝org.eclipse.jdt.apt.core.prefs
┃   ┣➝org.eclipse.jdt.core.prefs
┃   ┗➝org.eclipse.m2e.core.prefs
┣➝src
┃   ┗➝main
┃       ┣➝java
┃       ┃   ┗➝com
┃       ┃       ┗➝lti
┃       ┃           ┗➝homeloan
┃       ┃               ┣➝controller
┃       ┃               ┃   ┣➝AdminController.java
┃       ┃               ┃   ┣➝CustomerController.java
┃       ┃               ┃   ┣➝EmiCalculatorController.java
┃       ┃               ┃   ┣➝IncomeController.java
┃       ┃               ┃   ┣➝LoanController.java
┃       ┃               ┃   ┣➝LoginController.java
┃       ┃               ┃   ┣➝MultipleUploadController.java
┃       ┃               ┃   ┗➝TrackerController.java
┃       ┃               ┣➝dao
┃       ┃               ┃   ┣➝IAdminDao.java
┃       ┃               ┃   ┣➝AdminDao.java
┃       ┃               ┃   ┣➝ICustPropertyAndIncomeDao.java
┃       ┃               ┃   ┣➝CustPropertyAndIncomeDao.java
┃       ┃               ┃   ┣➝ICustomerDao.java
┃       ┃               ┃   ┣➝CustomerDao.java
┃       ┃               ┃   ┣➝IDocumentDao.java
┃       ┃               ┃   ┣➝DocumentDao.java
┃       ┃               ┃   ┣➝ILoanDao.java
┃       ┃               ┃   ┣➝LoanDao.java
┃       ┃               ┃   ┣➝ILoginDao.java
┃       ┃               ┃   ┣➝LoginDao.java
┃       ┃               ┃   ┣➝ITrackerDao.java
┃       ┃               ┃   ┗➝TrackerDao.java
┃       ┃               ┣➝exception
┃       ┃               ┃   ┣➝AdminException.java
┃       ┃               ┃   ┣➝CalculatorException.java
┃       ┃               ┃   ┣➝CustomException.java
┃       ┃               ┃   ┣➝ExceptionControllerAdvice.java
┃       ┃               ┃   ┣➝FileStorageException.java
┃       ┃               ┃   ┣➝LoanException.java
┃       ┃               ┃   ┗➝LoginException.java
┃       ┃               ┣➝model
┃       ┃               ┃   ┣➝Customer.java
┃       ┃               ┃   ┣➝Document.java
┃       ┃               ┃   ┣➝EligibiltyCalculator.java
┃       ┃               ┃   ┣➝EmiCalculator.java
┃       ┃               ┃   ┣➝Loan.java
┃       ┃               ┃   ┣➝Login.java
┃       ┃               ┃   ┣➝PropertyAndIncome.java
┃       ┃               ┃   ┗➝Tracker.java
┃       ┃               ┣➝service
┃       ┃               ┃   ┣➝IAdminService.java
┃       ┃               ┃   ┣➝AdminService.java
┃       ┃               ┃   ┣➝ICustPropertyAndIncomeService.java
┃       ┃               ┃   ┣➝CustPropertyAndIncomeService.java
┃       ┃               ┃   ┣➝ICustomerService.java
┃       ┃               ┃   ┣➝CustomerService.java
┃       ┃               ┃   ┣➝IDocumentService.java
┃       ┃               ┃   ┣➝DocumentService.java
┃       ┃               ┃   ┣➝IEligibilityCalculatorService.java
┃       ┃               ┃   ┣➝EligibilityCalculatorService.java
┃       ┃               ┃   ┣➝IEmiCalculatorService.java
┃       ┃               ┃   ┣➝EmiCalculatorService.java
┃       ┃               ┃   ┣➝ILoanService.java
┃       ┃               ┃   ┣➝LoanService.java
┃       ┃               ┃   ┣➝ILoginService.java
┃       ┃               ┃   ┣➝LoginService.java
┃       ┃               ┃   ┣➝ITrackerService.java
┃       ┃               ┃   ┗➝TrackerService.java
┃       ┃               ┣➝Application.java
┃       ┃               ┗➝ServletInitializer.java
┃       ┣➝resources
┃       ┃   ┣➝static
┃       ┃   ┃   ┣➝assets
┃       ┃   ┃   ┃   ┣➝
┃       ┃   ┃   ┃   ┣➝
┃       ┃   ┃   ┣➝css
┃       ┃   ┃   ┗➝js
┃       ┃   ┗➝application.properties
┃       ┗➝webapp
┃           ┗➝WEB-INF
┃               ┗➝views
┃
┣➝target (*compiled files*)
┣➝.classpath
┣➝.project
┣➝LICENSE
┣➝README.md
┣➝mvnw
┣➝mvnw.cmd
┣➝pom.xml
┗➝db.sql

```

## Contributors

- Shreya Rastogi
- Shiwangi Singh
- Aastha Sehgal
- Sahil Hustu
- [Abhinav Sharma](https://github.com/ABSphreak)

## License
LIcensed under EPL-2.0
