rm2() {
  cmd=($*)

  unset cmd[0]

  rm "${cmd[@]}"
}