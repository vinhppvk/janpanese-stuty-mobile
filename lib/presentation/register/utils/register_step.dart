enum RegisterStep {
  account('Account'),
  confirm('Confirm'),
  finish('Finish');

  const RegisterStep(this.displayText);

  final String displayText;
}
