package p230;

import android.view.View;
import java.util.ArrayList;
import java.util.HashMap;
import p010.AbstractC0844;
import p035.AbstractC1220;

/* renamed from: ˑʿ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3171 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final View f12114;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashMap f12115 = new HashMap();

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayList f12113 = new ArrayList();

    public C3171(View view) {
        this.f12114 = view;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3171)) {
            return false;
        }
        C3171 c3171 = (C3171) obj;
        return this.f12114 == c3171.f12114 && this.f12115.equals(c3171.f12115);
    }

    public final int hashCode() {
        return this.f12115.hashCode() + (this.f12114.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder m3017 = AbstractC0844.m3017("TransitionValues@" + Integer.toHexString(hashCode()) + ":\n", "    view = ");
        m3017.append(this.f12114);
        m3017.append("\n");
        String m3791 = AbstractC1220.m3791(m3017.toString(), "    values:");
        HashMap hashMap = this.f12115;
        for (String str : hashMap.keySet()) {
            m3791 = m3791 + "    " + str + ": " + hashMap.get(str) + "\n";
        }
        return m3791;
    }
}
