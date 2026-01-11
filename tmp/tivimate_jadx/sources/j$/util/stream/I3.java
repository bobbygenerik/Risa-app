package j$.util.stream;

/* loaded from: classes2.dex */
public final class I3 extends AbstractC5491h2 implements Q3 {
    public long b;
    public boolean c;
    public final /* synthetic */ boolean d;
    public final /* synthetic */ H3 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public I3(H3 h3, InterfaceC5511l2 interfaceC5511l2, boolean z) {
        super(interfaceC5511l2);
        this.e = h3;
        this.d = z;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        boolean z;
        boolean z2;
        if (!this.c) {
            boolean test = this.e.t.test(obj);
            this.c = !test;
            if (test) {
                z = false;
                z2 = this.d;
                if (z2 && !z) {
                    this.b++;
                }
                if (!z2 || z) {
                    this.a.accept((InterfaceC5511l2) obj);
                }
                return;
            }
        }
        z = true;
        z2 = this.d;
        if (z2) {
            this.b++;
        }
        if (z2) {
        }
        this.a.accept((InterfaceC5511l2) obj);
    }

    @Override // j$.util.stream.Q3
    public final long h() {
        return this.b;
    }
}
