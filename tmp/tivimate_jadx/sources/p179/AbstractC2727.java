package p179;

import android.database.Observable;
import android.view.ViewGroup;
import java.util.List;

/* renamed from: ˋˋ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2727 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2696 f10419 = new Observable();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f10418 = false;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f10417 = 1;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void mo6116(AbstractC2673 abstractC2673) {
    }

    /* renamed from: ʽ */
    public int mo607(int i) {
        return 0;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public void m6117(AbstractC2673 abstractC2673) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6118() {
        this.f10419.m6060();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m6119() {
        this.f10417 = 3;
        this.f10419.m6059();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6120(int i, int i2, Object obj) {
        this.f10419.m6057(i, i2, obj);
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m6121(AbstractC2673 abstractC2673) {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public void m6122(AbstractC2673 abstractC2673, int i, List list) {
        mo612(abstractC2673, i);
    }

    /* renamed from: ᵔᵢ */
    public abstract AbstractC2673 mo610(ViewGroup viewGroup, int i);

    /* renamed from: ⁱˊ */
    public long mo2393(int i) {
        return -1L;
    }

    /* renamed from: ﹳٴ */
    public abstract int mo611();

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m6123(boolean z) {
        if (this.f10419.m6061()) {
            throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
        }
        this.f10418 = z;
    }

    /* renamed from: ﾞᴵ */
    public abstract void mo612(AbstractC2673 abstractC2673, int i);
}
