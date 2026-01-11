package j$.util.stream;

import java.util.concurrent.CountedCompleter;

/* renamed from: j$.util.stream.u1, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public class C5554u1 extends CountedCompleter {
    public final G0 a;
    public final int b;
    public final /* synthetic */ int c;
    public final Object d;

    public C5554u1(G0 g0, Object obj, int i) {
        this.c = i;
        this.a = g0;
        this.b = 0;
        this.d = obj;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C5554u1(C5554u1 c5554u1, F0 f0, int i) {
        this(c5554u1, f0, i, (byte) 0);
        this.c = 0;
        this.d = c5554u1.d;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C5554u1(C5554u1 c5554u1, G0 g0, int i) {
        this(c5554u1, g0, i, (byte) 0);
        this.c = 1;
        this.d = (Object[]) c5554u1.d;
    }

    public C5554u1(C5554u1 c5554u1, G0 g0, int i, byte b) {
        super(c5554u1);
        this.a = g0;
        this.b = i;
    }

    public final C5554u1 a(int i, int i2) {
        switch (this.c) {
            case 0:
                return new C5554u1(this, ((F0) this.a).a(i), i2);
            default:
                return new C5554u1(this, this.a.a(i), i2);
        }
    }

    @Override // java.util.concurrent.CountedCompleter
    public final void compute() {
        C5554u1 c5554u1 = this;
        while (c5554u1.a.o() != 0) {
            c5554u1.setPendingCount(c5554u1.a.o() - 1);
            int i = 0;
            int i2 = 0;
            while (i < c5554u1.a.o() - 1) {
                C5554u1 a = c5554u1.a(i, c5554u1.b + i2);
                i2 = (int) (a.a.count() + i2);
                a.fork();
                i++;
            }
            c5554u1 = c5554u1.a(i, c5554u1.b + i2);
        }
        switch (c5554u1.c) {
            case 0:
                ((F0) c5554u1.a).f(c5554u1.b, c5554u1.d);
                break;
            default:
                c5554u1.a.k((Object[]) c5554u1.d, c5554u1.b);
                break;
        }
        c5554u1.propagateCompletion();
    }
}
