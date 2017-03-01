//
//  MazeSolverController.swift
//  SwiftTD
//
//  Created by Taylor Cargill on 2/28/17.
//  Copyright © 2017 Taylor Cargill. All rights reserved.
//

import Foundation

class MazeSolverController{
    //var maze: [[int]] = []
    var grid: Grid
    var wasHere: [[Bool]] = [[false]]
    var correctPath: [[Bool]] = [[false]]
    var startX: Int = 0
    var startY: Int = 0
    var endX: Int = 0
    var endY: Int = 0
    
    
    
    //need:
    //grid width/height
    
    
    init(grid: Grid){
        self.grid = grid
        
        //FIX ME
        //self.wasHere = [grid.width][grid.width]
        //self.correctPath = [grid.width][grid.width]
        
    }
    
    //FIX ME
    /*
    func solveMaze() {
        for row in 1...grid.length {
            for col in 1...grid[row].length{
                wasHere[row][col] = false
                correctPath[row][col] = false
            }
            var b:Bool = recursiveSolve(startX, startY)
            // Will leave you with a boolean array (correctPath)
            // with the path indicated by true values.
            if(b == false){
                //no solution
            }
        }
    
        func recursiveSolve(x: Int, y: Int) -> Bool{
            if (x == endX && y == endY){
                // If you reached the end
                return true
            }
            if (grid[x][y] == 2 || wasHere[x][y]){
                return false
            }
            
            // If you are on a wall or already were here
            wasHere[x][y] = true
            
            // Checks if not on left edge
            if (x != 0){
                
                // Recalls method one to the left
                if (recursiveSolve(x: x-1, y: y)) {
                    
                    // Sets that path value to true;
                    correctPath[x][y] = true;
                    return true;
                }
            }
            
            // Checks if not on right edge
            if (x != width - 1){
                
                // Recalls method one to the right
                if (recursiveSolve(x: x+1, y: y)) {
                    correctPath[x][y] = true;
                    return true
                }
            }
            
            // Checks if not on top edge
            if (y != 0){
                
                // Recalls method one up
                if (recursiveSolve(x: x, y: y-1)) {
                    correctPath[x][y] = true;
                    return true
                }
            }
            
            // Checks if not on bottom edge
            if (y != height- 1){
                
                // Recalls method one down
                if (recursiveSolve(x: x, y: y+1)) {
                    correctPath[x][y] = true;
                    return true
                }
            }
            
            return false
        }
 
    }
     */
}
