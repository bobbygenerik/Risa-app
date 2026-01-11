package p404;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;
import p277.AbstractC3528;

/* renamed from: ﹳʽ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4778 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4778 f18020 = new C4778();

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f18021 = new HashMap();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final synchronized void m9550(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            m9551((String) entry.getKey(), (AbstractC3528) entry.getValue());
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized void m9551(String str, AbstractC3528 abstractC3528) {
        try {
            if (!this.f18021.containsKey(str)) {
                this.f18021.put(str, abstractC3528);
                return;
            }
            if (((AbstractC3528) this.f18021.get(str)).equals(abstractC3528)) {
                return;
            }
            throw new GeneralSecurityException("Parameters object with name " + str + " already exists (" + this.f18021.get(str) + "), cannot insert " + abstractC3528);
        } catch (Throwable th) {
            throw th;
        }
    }
}
