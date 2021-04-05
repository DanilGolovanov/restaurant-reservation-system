using Microsoft.EntityFrameworkCore;
using System;
using System.Linq;
using T2RMSWS.Data;
using Xunit;

namespace XUnitTestT2RMS
{
    public class T2RMSxUT
    {
        //TCOO9
        [Fact]
        public void CreateSittingAndTableSitting_ValidTest()
        {
            //Set up DB with InMemoryDatabase
            var options = new DbContextOptionsBuilder<ApplicationDbContext>()
                .UseInMemoryDatabase(databaseName: "T2RMSWS").Options;

            using (var ctext = new ApplicationDbContext(options))
            {
                // Arrange
                var sitting = new Sitting
                {
                    SittingTypeId = 1,
                    StartDateTime = new DateTime(2020, 05, 29, 07, 00, 00, 0000000),
                    EndDateTime = new DateTime(2020, 05, 20, 10, 00, 00, 0000000),
                    Capacity = 100,
                    SittingStatusId = 1,
                };
                var tableSitting = new TableSitting()
                {
                    SittingId = sitting.Id,
                    TableId = 1
                };
                //Act
                ctext.Sittings.Add(sitting);
                ctext.TableSittings.Add(tableSitting);
                ctext.SaveChanges();
            }

            using (var ctext = new ApplicationDbContext(options))
            {
                //Act
                var sitting = ctext.Sittings.ToList();
                var tableSitting = ctext.TableSittings
                    .Include(s => s.Sitting)
                    .ToList();
                int expectedSitting = 1;
                int actualSitting = sitting.Count();
                int expectedTS = 1;
                int actualTS = tableSitting.Count();
                //Assert
                Assert.Equal(expectedSitting, actualSitting);
                Assert.Equal(expectedTS, actualTS);
            }

        }

    }
}
