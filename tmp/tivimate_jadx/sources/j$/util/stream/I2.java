package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class I2 extends AbstractC5565w2 {
    public double[] c;
    public int d;

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        double[] dArr = this.c;
        int i = this.d;
        this.d = i + 1;
        dArr[i] = d;
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new double[(int) j];
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        int i = 0;
        Arrays.sort(this.c, 0, this.d);
        long j = this.d;
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(j);
        if (this.b) {
            while (i < this.d && !interfaceC5511l2.e()) {
                interfaceC5511l2.accept(this.c[i]);
                i++;
            }
        } else {
            while (i < this.d) {
                interfaceC5511l2.accept(this.c[i]);
                i++;
            }
        }
        interfaceC5511l2.end();
        this.c = null;
    }
}
