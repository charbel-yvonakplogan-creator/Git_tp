ls2() {
  cmd=($*)

  unset cmd[0]

  ls "${cmd[@]}"
}