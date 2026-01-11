package p447;

import java.util.HashSet;
import p255.C3359;

/* renamed from: ﹶﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5226 extends AbstractC5277 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public String f19653;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Long f19654;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3359 f19655;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Long f19656;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public HashSet f19657;

    /*  JADX ERROR: Types fix failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:96)
        */
    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final java.util.ArrayList m10246(java.lang.String r41, java.util.List r42, java.util.List r43, java.lang.Long r44, java.lang.Long r45, boolean r46) {
        /*
            Method dump skipped, instructions count: 2789
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5226.m10246(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long, boolean):java.util.ArrayList");
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ */
    public final void mo10191() {
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final C5268 m10247(Integer num) {
        if (this.f19655.containsKey(num)) {
            return (C5268) this.f19655.get(num);
        }
        C5268 c5268 = new C5268(this, this.f19653);
        this.f19655.put(num, c5268);
        return c5268;
    }
}
