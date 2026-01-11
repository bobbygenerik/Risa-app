package p383;

import android.net.Uri;
import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import p031.C1144;

/* renamed from: ⁱʼ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4592 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final Set f17101 = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC4578 f17102;

    public C4592(InterfaceC4578 interfaceC4578) {
        this.f17102 = interfaceC4578;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        return f17101.contains(((Uri) obj).getScheme());
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        return this.f17102.mo4900(new C4593(((Uri) obj).toString()), i, i2, c1144);
    }
}
