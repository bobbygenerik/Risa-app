package p186;

import android.os.Build;
import android.view.View;
import j$.util.Objects;
import p349.C4292;

/* renamed from: ˋᵔ.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2822 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C2816 f10597;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2816 f10598;

    static {
        int i = Build.VERSION.SDK_INT;
        f10597 = (i >= 34 ? new C2769() : i >= 31 ? new C2818() : i >= 30 ? new C2800() : i >= 29 ? new C2815() : new C2824()).mo6223().f10589.mo6267().f10589.mo6197().f10589.mo6195();
    }

    public C2822(C2816 c2816) {
        this.f10598 = c2816;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2822)) {
            return false;
        }
        C2822 c2822 = (C2822) obj;
        return mo6245() == c2822.mo6245() && mo6196() == c2822.mo6196() && Objects.equals(mo6247(), c2822.mo6247()) && Objects.equals(mo6194(), c2822.mo6194()) && Objects.equals(mo6265(), c2822.mo6265());
    }

    public int hashCode() {
        return Objects.hash(Boolean.valueOf(mo6245()), Boolean.valueOf(mo6196()), mo6247(), mo6194(), mo6265());
    }

    /* renamed from: ʼˎ */
    public C4292 mo6194() {
        return C4292.f15887;
    }

    /* renamed from: ʼᐧ */
    public void mo6242(C4292[] c4292Arr) {
    }

    /* renamed from: ʽ */
    public C2816 mo6195() {
        return this.f10598;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C4292 mo6264() {
        return mo6247();
    }

    /* renamed from: ˈ */
    public void mo6165(View view) {
    }

    /* renamed from: ˉʿ */
    public C2816 mo6244(int i, int i2, int i3, int i4) {
        return f10597;
    }

    /* renamed from: ˉˆ */
    public boolean mo6245() {
        return false;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C2784 mo6265() {
        return null;
    }

    /* renamed from: יـ */
    public void mo6246(int i) {
    }

    /* renamed from: ٴﹶ */
    public C4292 mo6247() {
        return C4292.f15887;
    }

    /* renamed from: ᵎﹶ */
    public C4292 mo6166(int i) {
        if ((i & 8) == 0) {
            return C4292.f15887;
        }
        throw new IllegalArgumentException("Unable to query the maximum insets for IME");
    }

    /* renamed from: ᵔʾ */
    public boolean mo6196() {
        return false;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public C4292 mo6266() {
        return mo6247();
    }

    /* renamed from: ᵔﹳ */
    public void mo6248(C2816 c2816) {
    }

    /* renamed from: ⁱˊ */
    public C2816 mo6197() {
        return this.f10598;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2816 mo6267() {
        return this.f10598;
    }

    /* renamed from: ﹳᐧ */
    public void mo6198(C4292 c4292) {
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public C4292 mo6268() {
        return mo6247();
    }

    /* renamed from: ﾞᴵ */
    public C4292 mo6167(int i) {
        return C4292.f15887;
    }
}
