package androidx.leanback.widget;

import android.text.TextUtils;
import p384.C4603;

/* renamed from: androidx.leanback.widget.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC0110 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f920;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0134 f921;

    public /* synthetic */ RunnableC0110(C0134 c0134, int i) {
        this.f920 = i;
        this.f921 = c0134;
    }

    @Override // java.lang.Runnable
    public final void run() {
        InterfaceC0102 interfaceC0102;
        switch (this.f920) {
            case 0:
                SearchBar searchBar = (SearchBar) this.f921.f980;
                if (TextUtils.isEmpty(searchBar.f736) || (interfaceC0102 = searchBar.f719) == null) {
                    return;
                }
                ﾞᵔ.ˉٴ.ʽᐧ((ﾞᵔ.ˉٴ) ((C4603) interfaceC0102).f17126, searchBar.f736, true);
                return;
            case 1:
                ʼⁱ.ʽ m6803 = ((ﾞᵔ.ˉٴ) ((C4603) ((SearchBar) this.f921.f980).f719).f17126).m6803();
                ʼⁱ.ʽ r0 = m6803 instanceof ʼⁱ.ʽ ? m6803 : null;
                if (r0 != null) {
                    r0.ـˆ(false);
                    return;
                }
                return;
            default:
                SearchBar searchBar2 = (SearchBar) this.f921.f980;
                searchBar2.f737 = true;
                searchBar2.f718.requestFocus();
                return;
        }
    }
}
