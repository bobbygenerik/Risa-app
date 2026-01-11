package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class L2 extends AbstractC5580z2 {
    public Object[] d;
    public int e;

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        Object[] objArr = this.d;
        int i = this.e;
        this.e = i + 1;
        objArr[i] = obj;
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = new Object[(int) j];
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        int i = 0;
        Arrays.sort(this.d, 0, this.e, this.b);
        long j = this.e;
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(j);
        if (this.c) {
            while (i < this.e && !interfaceC5511l2.e()) {
                interfaceC5511l2.accept((InterfaceC5511l2) this.d[i]);
                i++;
            }
        } else {
            while (i < this.e) {
                interfaceC5511l2.accept((InterfaceC5511l2) this.d[i]);
                i++;
            }
        }
        interfaceC5511l2.end();
        this.d = null;
    }
}
