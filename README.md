# Generic Cell Controllers

`GenericCellControllers` is a Swift framework that simplifies dealing with [heterogeneous] lists of data in a `UITableView` or `UICollectionView`. Its main goal is to reduce boilerplate and to let you focus on the important bits of your feature.

## Motivation
You can find all about the process that led us to create `GenericCellControllers` in our [blog](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-1-of-3-18c6cd10a0b3).

## Features
- Handles all boilerplate letting you focus on your features.
- Uses generics to adapt to your types. No need to downcast in your code.
- Highly flexible and expandable.
- Unified API for UITableView and UICollectionView.
- Compiler time checks. Helps you detect mistakes ahead of time.

## How to use
The best way to learn how to use it is to [read](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-1-of-3-18c6cd10a0b3) [our](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-2-of-3-3fe73b0c50c6) [blogposts](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-3-of-3-80275e29513b) or have a look at the provided example project.

A quick summary would be:
1. Subclass `GenericCellController` and implement the methods you require (all of them are optional).
```swift
import GenericCellControllers

class MyCellController: GenericCellController<MyCell> {
    func configureCell(_ cell: MyCell) {
        // Your configuration code...
    }
    
    func cellSelected() {
        // Action to execute when the cell is selected...
    }
}
```
2. Register your cell controllers in your `UITableView` or `UICollectionView`.
```swift
MyCellController.registerCell(on: tableView)
MyOtherCellController.registerCell(on: tableView)
````
3. Create your list of cell controllers that matches your list of [heterogeneous] data.
```swift
import GenericCellControllers

class MyTableController: UITableViewDataSource, UITableViewDelegate {
    var tableView: UITableView!
    var cellControllers: [TableCellController] = []
    ...
    func updateTableView() {
        cellControllers = createCellControllers()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
}
```
For points **2** and **3** we recommend the use of the [Factory pattern](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-1-of-3-18c6cd10a0b3#4b40).

4. Forward the relevant *delegate* and *datasource* methods to the Cell Controllers.
```swift
...
func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    return cellControllers[indexPath.row].cellFromReusableCellHolder(tableView, forIndexPath: indexPath)
}

func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    cellControllers[indexPath.row].cellSelected()
}
...
```
Again, refer to our [blog](https://tech.busuu.com/dealing-with-different-kinds-of-cells-in-swift-part-1-of-3-18c6cd10a0b3) (by now you may have figured out that you should really read it 😜) or have a look at the example project for more details.
### Variable `IndexPath`s
The `GenericCellController`s use the `IndexPath` they are sent while dequeuing cells to be able to locate that cell in other methods, like `currentCell()`. If you insert or delete cells in your `UITableView` or `UICollectionView` without reloading it, remember to manually update the `IndexPath` of the Cell Controllers that may be affected.
## How to install
### CocoaPods
1. Make sure `use_frameworks!` is added to your `Podfile`.
2. Include the following in your `Podfile`:
```
pod 'GenericCellControllers'
```
3. Run `pod install`.
### Carthage
Simply add GenericCellControllers to your Cartfile:
```
github "Busuu/generic-cell-controllers"
```
### Manually
1. Clone, add as a submodule or [download](https://github.com/Busuu/generic-cell-controllers/archive/master.zip).
2. Drag and drop `GenericCellControllers` project to your workspace.
3. Add `GenericCellControllers` to Embedded binaries.
## License
Source code is distributed under MIT license.
