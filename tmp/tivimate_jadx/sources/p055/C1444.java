package p055;

import android.net.Uri;
import com.bumptech.glide.ʽ;
import j$.util.Objects;
import java.util.List;
import p017.AbstractC0993;
import p017.C0968;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1444 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f5625;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC0993 f5626;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f5627;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f5628;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Uri f5629;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC3712.m7802(5);
        AbstractC3712.m7802(6);
        AbstractC3712.m7802(7);
    }

    public C1444(Uri uri, String str, ʽ r3, List list, AbstractC0993 abstractC0993, long j) {
        this.f5629 = uri;
        this.f5628 = AbstractC1464.m4251(str);
        this.f5625 = list;
        this.f5626 = abstractC0993;
        C0968 m3261 = AbstractC0993.m3261();
        for (int i = 0; i < abstractC0993.size(); i++) {
            ((C1451) abstractC0993.get(i)).getClass();
            m3261.m3239(new Object());
        }
        m3261.m3249();
        this.f5627 = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1444)) {
            return false;
        }
        C1444 c1444 = (C1444) obj;
        return this.f5629.equals(c1444.f5629) && Objects.equals(this.f5628, c1444.f5628) && Objects.equals(null, null) && this.f5625.equals(c1444.f5625) && this.f5626.equals(c1444.f5626) && this.f5627 == c1444.f5627;
    }

    public final int hashCode() {
        int hashCode = this.f5629.hashCode() * 31;
        return (int) (((this.f5626.hashCode() + ((this.f5625.hashCode() + ((hashCode + (this.f5628 == null ? 0 : r1.hashCode())) * 29791)) * 961)) * 31 * 31) + this.f5627);
    }
}
