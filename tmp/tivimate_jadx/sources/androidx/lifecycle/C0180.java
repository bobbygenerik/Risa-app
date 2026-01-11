package androidx.lifecycle;

import java.util.Iterator;
import java.util.LinkedHashMap;

/* renamed from: androidx.lifecycle.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0180 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f1069 = new LinkedHashMap();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m706() {
        LinkedHashMap linkedHashMap = this.f1069;
        Iterator it = linkedHashMap.values().iterator();
        while (it.hasNext()) {
            ((AbstractC0196) it.next()).m728();
        }
        linkedHashMap.clear();
    }
}
