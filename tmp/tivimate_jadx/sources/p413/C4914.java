package p413;

import android.content.Context;
import p035.AbstractC1220;
import p419.InterfaceC4934;

/* renamed from: ﹳˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4914 extends AbstractC4911 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4934 f18332;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f18333;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4934 f18334;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18335;

    public C4914(Context context, InterfaceC4934 interfaceC4934, InterfaceC4934 interfaceC49342, String str) {
        if (context == null) {
            throw new NullPointerException("Null applicationContext");
        }
        this.f18335 = context;
        if (interfaceC4934 == null) {
            throw new NullPointerException("Null wallClock");
        }
        this.f18334 = interfaceC4934;
        if (interfaceC49342 == null) {
            throw new NullPointerException("Null monotonicClock");
        }
        this.f18332 = interfaceC49342;
        if (str == null) {
            throw new NullPointerException("Null backendName");
        }
        this.f18333 = str;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC4911) {
            C4914 c4914 = (C4914) ((AbstractC4911) obj);
            if (this.f18335.equals(c4914.f18335) && this.f18334.equals(c4914.f18334) && this.f18332.equals(c4914.f18332) && this.f18333.equals(c4914.f18333)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((((this.f18335.hashCode() ^ 1000003) * 1000003) ^ this.f18334.hashCode()) * 1000003) ^ this.f18332.hashCode()) * 1000003) ^ this.f18333.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("CreationContext{applicationContext=");
        sb.append(this.f18335);
        sb.append(", wallClock=");
        sb.append(this.f18334);
        sb.append(", monotonicClock=");
        sb.append(this.f18332);
        sb.append(", backendName=");
        return AbstractC1220.m3775(sb, this.f18333, "}");
    }
}
