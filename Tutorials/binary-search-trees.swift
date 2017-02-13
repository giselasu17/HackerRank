 func getHeight(root: Node?) -> Int {
        if root == nil || (root?.left == nil && root?.right == nil) {
            return 0
        }
        return 1 + max(getHeight(root: root?.left), getHeight(root: root?.right))
 }