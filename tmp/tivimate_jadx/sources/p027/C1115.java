package p027;

import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0558;
import com.google.android.gms.internal.play_billing.EnumC0607;

/* renamed from: ʼٴ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1115 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f4366;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f4367;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f4368;

    /* JADX WARN: Type inference failed for: r0v0, types: [ʼٴ.ˑﹳ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C1099 m3527() {
        ?? obj = new Object();
        obj.f4290 = 0;
        obj.f4289 = "";
        return obj;
    }

    public final String toString() {
        int i = this.f4368;
        int i2 = AbstractC0542.f2317;
        C0558 c0558 = EnumC0607.f2419;
        Integer valueOf = Integer.valueOf(i);
        return "Response Code: " + (!c0558.containsKey(valueOf) ? EnumC0607.f2421 : (EnumC0607) c0558.get(valueOf)).toString() + ", Debug Message: " + this.f4366;
    }
}
