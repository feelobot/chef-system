system Cookbook
===============
This installs git@github.com:feelobot/chef-system.git

Requirements
------------

Attributes
----------

Usage
-----
#### system::default
Modify files/default/system.conf to connect to the server/port you need (defualt is localhost:8125)

Just include `system` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[system]"
  ]
}
```

Contributing
------------
e.g.
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: TODO: List authors
