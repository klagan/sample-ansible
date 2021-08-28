# Getting started

This sample illustrates the difference between static imports and dynamic includes

---

## Static imports

Role `variables` are overwrite and use the last var declared - in this case - "kam"

Role `variables` are scoped at the play level and overwrites the type variable with the last one declared.

### `linuxtype` role

```yaml
dependencies:
- role: linuxtype
  vars:
    type: centos
    
- role: linuxtype
  vars:
    type: ubuntu

- role: linuxtype
  vars:
    type: kam
```

playbook
  -> statically import platform role
    -> platform role depends on linuxtype role
      -> linuxtype role depends on network and version roles

## Dynamic includes

Role `parameters` are passed - so now centos, ubuntu and kam are passed.

Role `parameters` remain scoped at the role level hence why we can run the same role multiple times with different values.

### `linuxtype` role

```yaml
dependencies:
- role: linuxtype
  type: centos
    
- role: linuxtype
  type: ubuntu

- role: linuxtype
  type: kam
```
