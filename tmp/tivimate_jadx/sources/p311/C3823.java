package p311;

import j$.util.Objects;

/* renamed from: ᐧᵢ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3823 extends AbstractC3798 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ int f14817;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f14818;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3835 f14819;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f14820;

    public C3823(int i, String str, boolean z) {
        this.f14817 = i;
        switch (i) {
            case 1:
                C3835 c3835 = C3835.f14842;
                Objects.requireNonNull(str, "name == null");
                this.f14818 = str;
                this.f14819 = c3835;
                this.f14820 = z;
                return;
            case 2:
                C3835 c38352 = C3835.f14842;
                Objects.requireNonNull(str, "name == null");
                this.f14818 = str;
                this.f14819 = c38352;
                this.f14820 = z;
                return;
            default:
                C3835 c38353 = C3835.f14842;
                Objects.requireNonNull(str, "name == null");
                this.f14818 = str;
                this.f14819 = c38353;
                this.f14820 = z;
                return;
        }
    }

    @Override // p311.AbstractC3798
    /* renamed from: ﹳٴ */
    public final void mo7958(C3813 c3813, Object obj) {
        switch (this.f14817) {
            case 0:
                if (obj == null) {
                    return;
                }
                this.f14819.getClass();
                String obj2 = obj.toString();
                if (obj2 == null) {
                    return;
                }
                c3813.m7991(this.f14818, obj2, this.f14820);
                return;
            case 1:
                if (obj == null) {
                    return;
                }
                this.f14819.getClass();
                String obj3 = obj.toString();
                if (obj3 == null) {
                    return;
                }
                c3813.m7990(this.f14818, obj3, this.f14820);
                return;
            default:
                if (obj == null) {
                    return;
                }
                this.f14819.getClass();
                String obj4 = obj.toString();
                if (obj4 == null) {
                    return;
                }
                c3813.m7989(this.f14818, obj4, this.f14820);
                return;
        }
    }
}
