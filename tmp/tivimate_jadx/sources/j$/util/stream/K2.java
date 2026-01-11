package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class K2 extends AbstractC5575y2 {
    public long[] c;
    public int d;

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        long[] jArr = this.c;
        int i = this.d;
        this.d = i + 1;
        jArr[i] = j;
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = new long[(int) j];
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
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
