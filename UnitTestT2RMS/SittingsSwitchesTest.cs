using System;
using System.Collections.ObjectModel;
using System.Threading;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;

namespace UnitTestT2RMS
{
    [TestClass]
    public class SittingsSwitchesTest
    {
        //-------SETUP INFO

        IWebDriver driver = new ChromeDriver();
        private string createSittingURL = "https://localhost:44304/Sittings/Create";

        [TestInitialize]
        public void SetUp()
        {
            try
            {
                driver.Navigate().GoToUrl(createSittingURL);
                driver.Manage().Window.Maximize();
                Thread.Sleep(1000);
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        [TestCleanup]
        public void TearDown()
        {
            try
            {
                driver.Quit();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        //-------METHODS

        //find how many area switches are on the page & how many are selected
        public int[] FindNumberOfCheckedAreas()
        {

            //find how many Area switches are on the page 
            ReadOnlyCollection<IWebElement> areaSwitches = driver.FindElements(By.CssSelector("input[class*=checkArea]"));
            int numberOfAreaSwitches = areaSwitches.Count;

            //find how many area switches were selected
            int countChecked = 0;

            foreach (var s in areaSwitches)
            {
                if (s.Selected)
                {
                    countChecked++;
                }
            }

            //store relevant info into array
            int[] infoAboutSwitches = new int[2];
            infoAboutSwitches[0] = numberOfAreaSwitches;
            infoAboutSwitches[1] = countChecked;

            return infoAboutSwitches;
        }

        //-------TESTS

        //TC001
        [TestMethod]
        public void Chrome_SwitchInitializationTest()
        {
            ReadOnlyCollection<IWebElement> switches = driver.FindElements(By.ClassName("switch-group"));
            Assert.IsTrue(switches.Count >= 2);
        }

        //TC002
        [TestMethod]
        public void Chrome_AreaSwitchesOn_ByTogglingMainSwitchOn()
        {
            //unselect all tables
            driver.FindElement(By.CssSelector("label[class*=switch-on]")).Click();

            //select all tables
            driver.FindElement(By.CssSelector("label[class*=switch-off]")).Click();

            //get info about switches
            int[] infoAboutSwitches = FindNumberOfCheckedAreas();
            int numberOfAreaSwitches = infoAboutSwitches[0];
            int numberOfCheckedSwitches = infoAboutSwitches[1];

            //check if all area switches were selected
            Assert.IsTrue(numberOfAreaSwitches == numberOfCheckedSwitches);
        }

        //TC003
        [TestMethod]
        public void Chrome_AreaSwitchesOff_ByTogglingMainSwitchOff()
        {
            //unselect all tables
            driver.FindElement(By.CssSelector("label[class*=switch-on]")).Click();

            //get info about switches
            int[] infoAboutSwitches = FindNumberOfCheckedAreas();
            int numberOfAreaSwitches = infoAboutSwitches[0];
            int numberOfCheckedSwitches = infoAboutSwitches[1];

            //check that all area switches were unselected
            Assert.IsTrue(numberOfAreaSwitches != 0 && numberOfCheckedSwitches == 0);
        }

        //TC004
        [TestMethod]
        public void Chrome_MainSwitchOff_ByTogglingAreaSwitchOff()
        {
            //unselect all tables in Outside Area
            driver.FindElement(By.CssSelector("label[for=checkAll_2]")).Click();

            //get info about switches
            bool mainSwitchIsChecked = driver.FindElement(By.Id("checkAll")).Selected;

            //check that all area switches were unselected
            Assert.IsTrue(mainSwitchIsChecked == false);
        }

        //TC005
        [TestMethod]
        public void Chrome_MainSwitchOn_ByTogglingAreaSwitchOn()
        {
            //unselect all tables in Outside Area
            driver.FindElement(By.CssSelector("label[for=checkAll_2]")).Click();

            //select all tables in Outside Area
            driver.FindElement(By.CssSelector("label[for=checkAll_2] ~ label")).Click();

            //get info about switches
            bool mainSwitchIsChecked = driver.FindElement(By.Id("checkAll")).Selected;

            //check that all area switches were unselected
            Assert.IsTrue(mainSwitchIsChecked == true);
        }

        //TC006
        [TestMethod]
        public void Chrome_MainlSwitchOffOneAreaSwitchOff_ByExcludingTable()
        {
            //unselect one table in Outside Area
            driver.FindElement(By.CssSelector("label[for=Tables_20__Selected]")).Click();

            //get info about switches
            bool mainSwitchIsChecked = driver.FindElement(By.Id("checkAll")).Selected;
            bool areaSwitchIsChecked = driver.FindElement(By.Id("checkAll_2")).Selected;

            //check that all area switches were unselected
            Assert.IsTrue(mainSwitchIsChecked == false && areaSwitchIsChecked == false);
        }

        //TC007
        [TestMethod]
        public void Chrome_MainlSwitchOffOneAreaSwitchOff_ByIncludingTable()
        {
            //unselect one table in Outside Area
            driver.FindElement(By.CssSelector("label[for=Tables_20__Selected]")).Click();

            //select one table in Outside Area that was unselected before
            driver.FindElement(By.CssSelector("label[for=Tables_20__Selected]")).Click();

            //get info about switches
            bool mainSwitchIsChecked = driver.FindElement(By.Id("checkAll")).Selected;
            bool areaSwitchIsChecked = driver.FindElement(By.Id("checkAll_2")).Selected;

            //check that all area switches were unselected
            Assert.IsTrue(mainSwitchIsChecked == true && areaSwitchIsChecked == true);
        }
    }
}
