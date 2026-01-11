package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class C2 extends AbstractC5575y2 {
    public S2 c;

    @Override // j$.util.stream.InterfaceC5506k2, j$.util.stream.InterfaceC5511l2
    public final void accept(long j) {
        this.c.accept(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.S2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new U2((int) j) : new U2();
    }

    @Override // j$.util.stream.AbstractC5486g2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        long[] jArr = (long[]) this.c.b();
        Arrays.sort(jArr);
        long length = jArr.length;
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = jArr.length;
            while (i < length2) {
                long j = jArr[i];
                if (interfaceC5511l2.e()) {
                    break;
                }
                interfaceC5511l2.accept(j);
                i++;
            }
        } else {
            int length3 = jArr.length;
            while (i < length3) {
                interfaceC5511l2.accept(jArr[i]);
                i++;
            }
        }
        interfaceC5511l2.end();
    }
}
