package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class A2 extends AbstractC5565w2 {
    public O2 c;

    @Override // j$.util.stream.InterfaceC5496i2, j$.util.stream.InterfaceC5511l2, java.util.function.DoubleConsumer
    public final void accept(double d) {
        this.c.accept(d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.O2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new U2((int) j) : new U2();
    }

    @Override // j$.util.stream.AbstractC5476e2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        double[] dArr = (double[]) this.c.b();
        Arrays.sort(dArr);
        long length = dArr.length;
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = dArr.length;
            while (i < length2) {
                double d = dArr[i];
                if (interfaceC5511l2.e()) {
                    break;
                }
                interfaceC5511l2.accept(d);
                i++;
            }
        } else {
            int length3 = dArr.length;
            while (i < length3) {
                interfaceC5511l2.accept(dArr[i]);
                i++;
            }
        }
        interfaceC5511l2.end();
    }
}
