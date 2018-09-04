//
//  TodoeyUITests.swift
//  TodoeyUITests
//
//  Created by Giovanni Pellizzoni on 17/08/18.
//  Copyright © 2018 ViViTECH. All rights reserved.
//

import XCTest

class TodoeyUITests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()
        
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testAddNewCategory(){
        
        let app = XCUIApplication()
        app.navigationBars["Todoey"].buttons["Add"].tap()
        
        let addNewCategoryAlert = app.alerts["Add new Category"]
        addNewCategoryAlert.collectionViews.textFields["Create new Category"].tap()
        
        app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"maiúsculas\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["C"]/*[[".keyboards.keys[\"C\"]",".keys[\"C\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["a"]/*[[".keyboards.keys[\"a\"]",".keys[\"a\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["g"]/*[[".keyboards.keys[\"g\"]",".keys[\"g\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.keys["r"].tap()
        
        app/*@START_MENU_TOKEN@*/.keys["y"]/*[[".keyboards.keys[\"y\"]",".keys[\"y\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["espaço"]/*[[".keyboards.keys[\"espaço\"]",".keys[\"espaço\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["more"]/*[[".keyboards",".keys[\"mais, números\"]",".keys[\"more\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let count = app.tables.cells.count + 1
        app.keys["\(count)"].tap()
        
        addNewCategoryAlert.buttons["Add Category"].tap()
        
        
    }
    
    func testRemoveCategory(){
        
        
        let tablesQuery = XCUIApplication().tables
        let count = tablesQuery.cells.count
        
        tablesQuery.staticTexts["Category \(count)"].swipeLeft()
        
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        
    }
    
    func testAddTodoItemToCategory(){
        
        let app = XCUIApplication()
        
        app.tables/*@START_MENU_TOKEN@*/.staticTexts["Category 1"]/*[[".cells.staticTexts[\"Category 1\"]",".staticTexts[\"Category 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app.navigationBars["Category 1"].buttons["Add"].tap()
        
        let addNewTodoeyItemAlert = app.alerts["Add new Todoey item"]
        
        addNewTodoeyItemAlert.collectionViews.textFields["Create new Item"].tap()
        
        let shiftButton  = app/*@START_MENU_TOKEN@*/.buttons["shift"]/*[[".keyboards",".buttons[\"maiúsculas\"]",".buttons[\"shift\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/
        shiftButton.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["T"]/*[[".keyboards.keys[\"T\"]",".keys[\"T\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let oKey = app/*@START_MENU_TOKEN@*/.keys["o"]/*[[".keyboards.keys[\"o\"]",".keys[\"o\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        oKey.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["d"]/*[[".keyboards.keys[\"d\"]",".keys[\"d\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        oKey.tap()
        
        
        let espaOKey = app/*@START_MENU_TOKEN@*/.keys["espaço"]/*[[".keyboards.keys[\"espaço\"]",".keys[\"espaço\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        espaOKey.tap()
        
        shiftButton.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["I"]/*[[".keyboards.keys[\"I\"]",".keys[\"I\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["t"]/*[[".keyboards.keys[\"t\"]",".keys[\"t\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["e"]/*[[".keyboards.keys[\"e\"]",".keys[\"e\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        app/*@START_MENU_TOKEN@*/.keys["m"]/*[[".keyboards.keys[\"m\"]",".keys[\"m\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        espaOKey.tap()
        
        let itemCount =  app.tables.cells.count + 1
        
        app.keys["more"].tap()
        
        app.keys["\(itemCount)"].tap()
        
        addNewTodoeyItemAlert.buttons["Add Item"].tap()
    }
    
    func testRemoveTodoItem() {
        
        let tablesQuery = XCUIApplication().tables
        tablesQuery/*@START_MENU_TOKEN@*/.staticTexts["Category 1"]/*[[".cells.staticTexts[\"Category 1\"]",".staticTexts[\"Category 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
        let count = tablesQuery.cells.count
        tablesQuery.staticTexts["Todo Item \(count)"].swipeLeft()
        
        tablesQuery/*@START_MENU_TOKEN@*/.buttons["Delete"]/*[[".cells.buttons[\"Delete\"]",".buttons[\"Delete\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        
    }
    
    func testWillRunByScript() {
        
        let app = XCUIApplication()
        
        let navBar =  app.descendants(matching: .navigationBar)
        let navBarButtons = navBar.descendants(matching: .button)
        let navBarButton = navBarButtons.element(boundBy: 0)
        navBarButton.tap();
        
        let addNewCategoryAlert = app.alerts
        let buttons = addNewCategoryAlert.buttons.element(boundBy: 0)
        buttons.tap()
        
    }
    
    
    func testWillAddANewCategory (){
        
    }
}
