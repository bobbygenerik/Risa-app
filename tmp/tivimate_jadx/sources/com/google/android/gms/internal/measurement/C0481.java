package com.google.android.gms.internal.measurement;

import android.content.Context;
import p095.InterfaceC1882;

/* renamed from: com.google.android.gms.internal.measurement.ⁱʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0481 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1882 f2239;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f2240;

    public C0481(Context context, InterfaceC1882 interfaceC1882) {
        this.f2240 = context;
        this.f2239 = interfaceC1882;
    }

    public final boolean equals(Object obj) {
        InterfaceC1882 interfaceC1882;
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0481) {
            C0481 c0481 = (C0481) obj;
            InterfaceC1882 interfaceC18822 = c0481.f2239;
            if (this.f2240.equals(c0481.f2240) && ((interfaceC1882 = this.f2239) != null ? interfaceC1882.equals(interfaceC18822) : interfaceC18822 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f2240.hashCode() ^ 1000003;
        InterfaceC1882 interfaceC1882 = this.f2239;
        return (hashCode * 1000003) ^ (interfaceC1882 == null ? 0 : interfaceC1882.hashCode());
    }

    public final String toString() {
        String obj = this.f2240.toString();
        int length = obj.length();
        String valueOf = String.valueOf(this.f2239);
        StringBuilder sb = new StringBuilder(length + 45 + valueOf.length() + 1);
        sb.append("FlagsContext{context=");
        sb.append(obj);
        sb.append(", hermeticFileOverrides=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
