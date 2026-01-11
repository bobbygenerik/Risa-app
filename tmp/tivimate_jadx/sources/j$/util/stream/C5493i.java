package j$.util.stream;

import java.util.stream.Collector;

/* renamed from: j$.util.stream.i, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final /* synthetic */ class C5493i {
    public final /* synthetic */ Collector a;

    public final /* synthetic */ boolean equals(Object obj) {
        Collector collector = this.a;
        if (obj instanceof C5493i) {
            obj = ((C5493i) obj).a;
        }
        return collector.equals(obj);
    }

    public final /* synthetic */ int hashCode() {
        return this.a.hashCode();
    }
}
