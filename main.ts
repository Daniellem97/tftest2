import { Construct } from 'constructs';
import { App, TerraformStack, TerraformOutput } from 'cdktf';
import { AwsProvider } from './.gen/providers/aws';

class MyStack extends TerraformStack {
  constructor(scope: Construct, name: string) {
    super(scope, name);

    new AwsProvider(this, 'Aws', {
      region: 'us-west-2',
    });
    new TerraformOutput(this, 'hello', {
      value: 'Hello, CDKTF!',
    });
  }
}

const app = new App();
new MyStack(app, 'my-stack');
app.synth();
