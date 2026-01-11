package j$.time.format;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* renamed from: j$.time.format.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5428a extends B {
    public final /* synthetic */ A d;

    public C5428a(A a) {
        this.d = a;
    }

    @Override // j$.time.format.B
    public final String b(j$.time.chrono.j jVar, j$.time.temporal.o oVar, long j, TextStyle textStyle, Locale locale) {
        return this.d.a(j, textStyle);
    }

    @Override // j$.time.format.B
    public final String c(j$.time.temporal.o oVar, long j, TextStyle textStyle, Locale locale) {
        return this.d.a(j, textStyle);
    }

    @Override // j$.time.format.B
    public final Iterator d(j$.time.chrono.j jVar, j$.time.temporal.o oVar, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.d.b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }

    @Override // j$.time.format.B
    public final Iterator e(j$.time.temporal.o oVar, TextStyle textStyle, Locale locale) {
        List list = (List) ((HashMap) this.d.b).get(textStyle);
        if (list != null) {
            return list.iterator();
        }
        return null;
    }
}
