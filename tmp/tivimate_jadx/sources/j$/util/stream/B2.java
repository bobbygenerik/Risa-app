package j$.util.stream;

import java.util.Arrays;

/* loaded from: classes2.dex */
public final class B2 extends AbstractC5570x2 {
    public Q2 c;

    @Override // j$.util.stream.InterfaceC5501j2, j$.util.stream.InterfaceC5511l2
    public final void accept(int i) {
        this.c.accept(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v5, types: [j$.util.stream.Q2] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.c = j > 0 ? new U2((int) j) : new U2();
    }

    @Override // j$.util.stream.AbstractC5481f2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        int[] iArr = (int[]) this.c.b();
        Arrays.sort(iArr);
        long length = iArr.length;
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(length);
        int i = 0;
        if (this.b) {
            int length2 = iArr.length;
            while (i < length2) {
                int i2 = iArr[i];
                if (interfaceC5511l2.e()) {
                    break;
                }
                interfaceC5511l2.accept(i2);
                i++;
            }
        } else {
            int length3 = iArr.length;
            while (i < length3) {
                interfaceC5511l2.accept(iArr[i]);
                i++;
            }
        }
        interfaceC5511l2.end();
    }
}
