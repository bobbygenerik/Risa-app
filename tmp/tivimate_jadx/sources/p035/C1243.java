package p035;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;
import p027.ServiceConnectionC1110;
import p153.C2469;
import p324.InterfaceC4023;
import p340.C4234;

/* renamed from: ʼﾞ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1243 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1201 f4823;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Context f4824;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final BinderC1216 f4825;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC4023 f4826;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AtomicBoolean f4827;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final ServiceConnectionC1110 f4828;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC1238 f4829;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4234 f4830;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1230 f4831;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f4832;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f4833;

    public C1243(Context context, String str, C1230 c1230) {
        this.f4832 = str;
        this.f4831 = c1230;
        this.f4824 = context.getApplicationContext();
        C2469 c2469 = c1230.f4771.f4726;
        this.f4826 = c2469 == null ? null : c2469;
        this.f4827 = new AtomicBoolean(true);
        this.f4830 = new C4234(0);
        this.f4823 = new C1201(this, c1230.f4770);
        this.f4825 = new BinderC1216(this);
        this.f4828 = new ServiceConnectionC1110(1, this);
    }
}
