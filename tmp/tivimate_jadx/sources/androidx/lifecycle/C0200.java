package androidx.lifecycle;

import android.os.Handler;

/* renamed from: androidx.lifecycle.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0200 implements InterfaceC0162 {

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final C0200 f1106 = new C0200();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f1108;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f1113;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Handler f1114;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f1107 = true;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f1109 = true;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0184 f1111 = new C0184(this);

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final RunnableC0197 f1112 = new RunnableC0197(0, this);

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final ﹳי.ʽ f1110 = new ﹳי.ʽ(this);

    @Override // androidx.lifecycle.InterfaceC0162
    /* renamed from: ˋᵔ */
    public final C0184 mo691() {
        return this.f1111;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m734() {
        int i = this.f1113 + 1;
        this.f1113 = i;
        if (i == 1) {
            if (!this.f1107) {
                this.f1114.removeCallbacks(this.f1112);
            } else {
                this.f1111.m710(EnumC0174.ON_RESUME);
                this.f1107 = false;
            }
        }
    }
}
