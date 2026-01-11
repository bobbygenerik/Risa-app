package j$.util.stream;

import j$.util.C5450p;
import j$.util.Objects;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class H2 extends AbstractC5580z2 {
    public ArrayList d;

    @Override // java.util.function.Consumer
    /* renamed from: accept */
    public final void n(Object obj) {
        this.d.add(obj);
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void c(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.d = j >= 0 ? new ArrayList((int) j) : new ArrayList();
    }

    @Override // j$.util.stream.AbstractC5491h2, j$.util.stream.InterfaceC5511l2
    public final void end() {
        j$.com.android.tools.r8.a.b0(this.d, this.b);
        long size = this.d.size();
        InterfaceC5511l2 interfaceC5511l2 = this.a;
        interfaceC5511l2.c(size);
        if (this.c) {
            ArrayList arrayList = this.d;
            int size2 = arrayList.size();
            int i = 0;
            while (i < size2) {
                Object obj = arrayList.get(i);
                i++;
                if (interfaceC5511l2.e()) {
                    break;
                } else {
                    interfaceC5511l2.n((InterfaceC5511l2) obj);
                }
            }
        } else {
            ArrayList arrayList2 = this.d;
            Objects.requireNonNull(interfaceC5511l2);
            j$.com.android.tools.r8.a.J(arrayList2, new C5450p(7, interfaceC5511l2));
        }
        interfaceC5511l2.end();
        this.d = null;
    }
}
