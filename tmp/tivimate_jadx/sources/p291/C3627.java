package p291;

import android.net.Uri;
import java.util.ArrayList;
import p017.AbstractC0993;
import p055.C1495;
import p274.InterfaceC3486;
import ˉˆ.ʿ;

/* renamed from: ٴᴵ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3627 extends AbstractC3615 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3613 f14191;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final ʿ f14192;

    public C3627(C1495 c1495, AbstractC0993 abstractC0993, C3626 c3626, ArrayList arrayList) {
        super(c1495, abstractC0993, c3626, arrayList);
        Uri.parse(((C3624) abstractC0993.get(0)).f14182);
        long j = c3626.f14190;
        C3613 c3613 = j <= 0 ? null : new C3613(c3626.f14189, j, null);
        this.f14191 = c3613;
        this.f14192 = c3613 == null ? new ʿ(25, new C3613(0L, -1L, null)) : null;
    }

    @Override // p291.AbstractC3615
    /* renamed from: ˈ */
    public final InterfaceC3486 mo7577() {
        return this.f14192;
    }

    @Override // p291.AbstractC3615
    /* renamed from: ˑﹳ */
    public final C3613 mo7578() {
        return this.f14191;
    }

    @Override // p291.AbstractC3615
    /* renamed from: ⁱˊ */
    public final String mo7579() {
        return null;
    }
}
