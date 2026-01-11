package p052;

import java.io.IOException;
import p356.C4345;

/* renamed from: ʽᴵ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1430 {
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4345 m4194() {
        return this instanceof C4345 ? (C4345) this : new C4345(this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˊᐧ.ᵎﹶ, java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m4195(Object obj) {
        ?? obj2 = new Object();
        try {
            mo4119(new C1425(obj2), obj);
            return obj2.m5843();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: ˑﹳ */
    public abstract void mo4119(AbstractC1429 abstractC1429, Object obj);

    /* renamed from: ⁱˊ */
    public abstract Object mo4120(AbstractC1413 abstractC1413);

    /* JADX WARN: Type inference failed for: r0v0, types: [ˊᐧ.ᵔᵢ, java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m4196(String str) {
        ?? obj = new Object();
        obj.m5827(str);
        C1403 c1403 = new C1403(obj);
        Object mo4120 = mo4120(c1403);
        if ((this instanceof AbstractC1409) || c1403.mo4127() == 10) {
            return mo4120;
        }
        throw new RuntimeException("JSON document was not fully consumed.");
    }
}
