//
//  MoviesTableVC.swift
//  IOSClasswork7
//
//  Created by Mariam on 10/7/20.
//  Copyright © 2020 Safeyah Coding. All rights reserved.
//

import UIKit

class MoviesTableVC: UITableViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return MoviesData.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MovieCell

//         Configure the cell...
        
        let movie = MoviesData[indexPath.row]
        cell.movieLabel.text = movie.movieName
        cell.movieImage.image = UIImage(named: movie.movieName)
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie = MoviesData[indexPath.row]
        performSegue(withIdentifier: "details", sender: movie)
    }

//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
////        var myCustomView: UIImageView
////        var myImage: UIImage = UIImage(named: "MsrvelLogo1")!
////        myCustomView.image = myImage
//
////        let header = UITableViewHeaderFooterView = view as UITableViewHeaderFooterView
////        let imageViewGame = UIImageView(frame: CGRect(5, 8, 40, 40));
////        let image: UIImage = UIImage(named: "MsrvelLogo1")!
////        header.addSubview(myCustomView)
////        imageViewGame.image = imag
////        return header
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let movie =  sender as! moviesModel
        let vc = segue.destination as! MovieDetailsViewController
        vc.movieData = movie
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
