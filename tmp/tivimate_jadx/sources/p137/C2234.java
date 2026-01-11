package p137;

import android.database.DataSetObserver;

/* renamed from: ˉˆ.ʻᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2234 extends DataSetObserver {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C2254 f8768;

    public C2234(C2254 c2254) {
        this.f8768 = c2254;
    }

    @Override // android.database.DataSetObserver
    public final void onChanged() {
        C2254 c2254 = this.f8768;
        if (c2254.f8835.isShowing()) {
            c2254.mo5273();
        }
    }

    @Override // android.database.DataSetObserver
    public final void onInvalidated() {
        this.f8768.dismiss();
    }
}
