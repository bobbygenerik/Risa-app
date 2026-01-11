package p268;

import android.content.Context;
import com.google.android.gms.internal.measurement.ᵎ;
import java.util.Set;
import java.util.concurrent.Executor;
import p074.InterfaceC1650;
import p145.C2402;
import p212.C2990;
import p220.C3029;
import ᴵˋ.ˊʻ;

/* renamed from: ـˎ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3466 implements InterfaceC3467, InterfaceC3472 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC1650 f13619;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Set f13620;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Executor f13621;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f13622;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2990 f13623;

    public C3466(Context context, String str, Set set, InterfaceC1650 interfaceC1650, Executor executor) {
        this.f13623 = new C2990(new C2402(context, str));
        this.f13620 = set;
        this.f13621 = executor;
        this.f13619 = interfaceC1650;
        this.f13622 = context;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7383() {
        if (this.f13620.size() <= 0) {
            ᵎ.ᵔᵢ((Object) null);
        } else if (ˊʻ.ᴵˊ(this.f13622)) {
            ᵎ.ˑﹳ(new CallableC3470(this, 1), this.f13621);
        } else {
            ᵎ.ᵔᵢ((Object) null);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3029 m7384() {
        return !ˊʻ.ᴵˊ(this.f13622) ? ᵎ.ᵔᵢ("") : ᵎ.ˑﹳ(new CallableC3470(this, 0), this.f13621);
    }
}
