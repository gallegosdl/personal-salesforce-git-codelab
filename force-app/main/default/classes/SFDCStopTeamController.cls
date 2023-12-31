/*
*	Original Author:- Rahul Malhotra
*   Contributor: - Darrell Gallegos
*	Description:- This is the controller class for SFDC Stop Team Component
*	Created:- 21-06-2020
*	Last Updated:- 26-06-2023
*   Change Log:-
*   SNo.        Name        Date        Description
*/
public class SFDCStopTeamController {

    public class Contributor {
        //comment
        public String name;
        public String picURL;
        public Date contributionDate;
        public String trailheadURL;

        public Contributor(String name, String picURL, Date contributionDate, String trailheadURL) {
            this.name = name;
            this.picURL = picURL;
            this.contributionDate = contributionDate;
            this.trailheadURL = trailheadURL;
        }
    }

    /*
    *	Author:- Rahul Malhotra
    *	Description:- This method is used to return contributors data
    */
    @AuraEnabled(cacheable=true)
    public static String getContributors() {
        List<Contributor> sfdcstopContributors = new List<Contributor>();
        sfdcstopContributors.add(
            new Contributor(
                'Rahul Malhotra',
                'https://pbs.twimg.com/profile_images/1208356452160589824/qLtb5g9P_400x400.jpg',
                Date.newInstance(2020, 06, 21),
                'https://trailblazer.me/id/rahulmalhotra'
            )
        );
        sfdcstopContributors.add(
            new Contributor(
                'Darrell Gallegos',
                'https://trailblazer.me/profilephoto/7291I000000eE0n/M',
                Date.newInstance(2023, 06, 23),
                'https://trailblazer.me/id/darrell-gallegos'
            )
        );
        

        return JSON.serialize(sfdcstopContributors);
    }
}
