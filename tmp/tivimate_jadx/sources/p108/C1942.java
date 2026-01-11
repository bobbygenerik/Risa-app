package p108;

import android.content.Context;
import android.net.Uri;
import java.io.File;
import p383.C4575;
import p383.InterfaceC4578;
import p383.InterfaceC4596;

/* renamed from: ˆᴵ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1942 implements InterfaceC4596 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Class f7705;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f7706;

    public C1942(Context context, Class cls) {
        this.f7706 = context;
        this.f7705 = cls;
    }

    @Override // p383.InterfaceC4596
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4578 mo4901(C4575 c4575) {
        Class cls = this.f7705;
        return new C1946(this.f7706, c4575.m9120(File.class, cls), c4575.m9120(Uri.class, cls), cls);
    }
}
