//: Playground - noun: a place where people can play
//A tree is a Binary Search Tree
import UIKit

public class Node {
    var value: Int
    var leftChild: Node!
    var rightChild: Node!
    
    init(_ value: Int) {
        self.value = value
    }
}

//return the node is a binary search tree
public func isBinarySearchTree(_ node: Node) -> Bool {
    
    var leftResponse = true
    if hasLeftChild(node) {
        if node.value < node.leftChild.value  {
            return false
        }
        leftResponse = isBinarySearchTree(node.leftChild)
    }
    var rightResponse = true
    if hasRightChild(node) {
        if node.value > node.rightChild.value  {
            return false
        }
        rightResponse = isBinarySearchTree(node.rightChild)
    }
    
    return leftResponse && rightResponse  //left and right child is a binary search three then the node is a binary search three
}

//return node has a right child
public func hasLeftChild(_ node: Node) -> Bool {
    guard (node.leftChild) != nil else {
        return false
    }
    return true
}

//return node has a leftchild
public func hasRightChild(_ node: Node) -> Bool {
    guard (node.leftChild) != nil else {
        return false
    }
    return true
}

//sample nodes
var node1 = Node(1)
var node2 = Node(2)
var node3 = Node(3)
var node4 = Node(4)
var node5 = Node(5)

node2.leftChild = node1
node2.rightChild = node3
node4.leftChild = node2
node4.rightChild = node5

//call the isBinarySearchTree for node4
isBinarySearchTree(node4)
