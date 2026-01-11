package p108;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import p031.C1144;
import p185.C2765;
import p383.C4586;
import p383.InterfaceC4578;
import ﹳٴ.ﹳٴ;

/* renamed from: ˆᴵ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1946 implements InterfaceC4578 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final InterfaceC4578 f7722;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Class f7723;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4578 f7724;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f7725;

    public C1946(Context context, InterfaceC4578 interfaceC4578, InterfaceC4578 interfaceC45782, Class cls) {
        this.f7725 = context.getApplicationContext();
        this.f7724 = interfaceC4578;
        this.f7722 = interfaceC45782;
        this.f7723 = cls;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        return Build.VERSION.SDK_INT >= 29 && ﹳٴ.ʽʽ((Uri) obj);
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        Uri uri = (Uri) obj;
        return new C4586(new C2765(uri), new C1943(this.f7725, this.f7724, this.f7722, uri, i, i2, c1144, this.f7723));
    }
}
