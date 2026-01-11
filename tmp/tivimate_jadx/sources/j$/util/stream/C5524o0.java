package j$.util.stream;

import java.util.function.Predicate;

/* renamed from: j$.util.stream.o0, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5524o0 extends AbstractC5543s0 {
    public final /* synthetic */ EnumC5548t0 c;
    public final /* synthetic */ Predicate d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5524o0(EnumC5548t0 enumC5548t0, Predicate predicate) {
        super(enumC5548t0);
        this.c = enumC5548t0;
        this.d = predicate;
    }

    @Override // java.util.function.Consumer
    public final void accept(Object obj) {
        if (this.a) {
            return;
        }
        boolean test = this.d.test(obj);
        EnumC5548t0 enumC5548t0 = this.c;
        if (test == enumC5548t0.a) {
            this.a = true;
            this.b = enumC5548t0.b;
        }
    }
}
