local Worktree = require("git-worktree")

Worktree.setup()

Worktree.on_tree_change(function(op, metadata)
  if op == Worktree.Operations.Create then
    print("Created " .. metadata.branch .. " to " .. metadata.upstream)
  end
end)
