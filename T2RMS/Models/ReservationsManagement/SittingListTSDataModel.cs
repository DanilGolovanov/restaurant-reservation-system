using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography.X509Certificates;
using System.Threading.Tasks;
using T2RMSWS.Data;

namespace T2RMSWS.Models
{
    public class SittingListTSDataModel
    {

        
        public List<Sitting> sittingList { get; set; }

        public List<int[][]> timeSlotList { get; set; } // has a list of times slots, so first one will be for the first sitting,
        // then the times follow afterwards, timeSlot 0 [9] etc.
        //public int[][] timeSlots { get; set; }
        public int[] daysAvailableTimes { get; set; }
        public List<int> daysAvailableTimesList { get; set; }

        public int counter { get; set; }

        public Reservation reservation { get; set; }
        public List<Area> areasList { get; set; }

        // previously entered data.
        public int Guests { get; set; } // including the person making the booking.
        public DateTime Duration { get; set; } // 1-6 (30 mins to 3 hours in increments of 30 mins.)
        public DateTime Date { get; set; } // 

        //
        public DateTime startDateTime { get; set; }
        public DateTime endDateTime { get; set; }

        public int startTimeSlot { get; set; }
        public string areaPicked { get; set; }
        //
        
        public string firstName { get; set; }
        public string lastName { get; set; }
        //

        public string notes_Requirements { get; set; }


        // staff detail area:

        public string email { get; set; }
        public string phone { get; set; }
        public int reservationTypePickedId { get; set; }
        public List<ReservationType> reservationTypeList { get; set; }

        //public List<Table> Tables { get; set; }

        public List<TableSitting> Tables { get; set; }
        public List<AreaModel> Areas { get; set; }


        //

        public List<bool> staffNeededForSittingList { get; set; }


        //Initialise the lists required.

        public SittingListTSDataModel()
        {
            sittingList = new List<Sitting>();
            timeSlotList = new List<int[][]>();
            //daysAvailableTimes = new int[]();
            daysAvailableTimesList = new List<int>();
            areasList = new List<Area>();
            reservationTypeList = new List<ReservationType>();
            //Tables = new List<TableSitting>();

            staffNeededForSittingList = new List<bool>();
        }

    }

    public class TableSitting
    {
        public int AreaId { get; set; }
        public string TableNo { get; set; }
        public int Capacity { get; set; }
        public Table Table { get; set; }
        public string Description { get; set; }
        public bool Selected { get; set; }
        public int TableId { get; set; }
    }

    public class AreaModel
    {
        public int AreaId { get; set; }
        public string Description { get; set; }
    }
}
