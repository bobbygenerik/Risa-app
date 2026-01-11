package p179;

import android.database.Observable;

/* renamed from: ˋˋ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2696 extends Observable {
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m6056(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo3071(i, i2);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m6057(int i, int i2, Object obj) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo3074(i, i2, obj);
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m6058(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo3070(i, i2);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m6059() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo6032();
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m6060() {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo3075();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m6061() {
        return !((Observable) this).mObservers.isEmpty();
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m6062(int i, int i2) {
        for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
            ((AbstractC2684) ((Observable) this).mObservers.get(size)).mo3072(i, i2);
        }
    }
}
