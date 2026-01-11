package androidx.leanback.widget;

import android.text.TextUtils;
import java.util.ArrayList;
import p179.AbstractC2741;

/* renamed from: androidx.leanback.widget.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0147 extends AbstractC2741 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f1010;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C0108 f1011;

    public C0147(C0108 c0108, ArrayList arrayList) {
        this.f1011 = c0108;
        this.f1010 = arrayList;
    }

    @Override // p179.AbstractC2741
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object mo662(int i, int i2) {
        C0108 c0108 = this.f1011;
        C0140 c0140 = c0108.f916;
        c0140.getClass();
        return null;
    }

    @Override // p179.AbstractC2741
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo663(int i, int i2) {
        C0108 c0108 = this.f1011;
        C0140 c0140 = c0108.f916;
        C0095 c0095 = (C0095) this.f1010.get(i);
        C0095 c00952 = (C0095) c0108.f909.get(i2);
        c0140.getClass();
        return c0095 == null ? c00952 == null : c00952 != null && c0095.f880 == c00952.f880;
    }

    @Override // p179.AbstractC2741
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int mo664() {
        return this.f1011.f909.size();
    }

    @Override // p179.AbstractC2741
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo665(int i, int i2) {
        C0108 c0108 = this.f1011;
        C0140 c0140 = c0108.f916;
        C0095 c0095 = (C0095) this.f1010.get(i);
        C0095 c00952 = (C0095) c0108.f909.get(i2);
        c0140.getClass();
        return c0095 == null ? c00952 == null : c00952 != null && c0095.f874 == c00952.f874 && c0095.f875 == c00952.f875 && TextUtils.equals(c0095.f871, c00952.f871) && TextUtils.equals(c0095.f873, c00952.f873) && c0095.f870 == c00952.f870 && TextUtils.equals(c0095.f882, c00952.f882) && TextUtils.equals(c0095.f877, c00952.f877) && c0095.f876 == c00952.f876 && c0095.f881 == c00952.f881;
    }

    @Override // p179.AbstractC2741
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final int mo666() {
        return this.f1010.size();
    }
}
