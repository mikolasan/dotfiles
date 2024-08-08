# Varmilo keyboard fix

- To fix **win** key: https://www.reddit.com/r/MechanicalKeyboards/comments/acvshk/varmilo_fn_left_ctrl_caps_lock_windows_key_swap/
- To fix **fn** keys: https://gist.github.com/vladak/b005b0446eeb049a8b4cd546bf11dbbc

```
echo 2 >> /sys/module/hid_apple/parameters/fnmode
```
