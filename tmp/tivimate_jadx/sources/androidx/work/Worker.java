package androidx.work;

import android.content.Context;
import com.google.android.gms.internal.measurement.ˏʻ;
import p003.C0778;
import p056.C1505;
import p322.AbstractC3967;
import p322.C3974;
import p322.C3978;

/* loaded from: classes.dex */
public abstract class Worker extends AbstractC3967 {
    public Worker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // p322.AbstractC3967
    /* renamed from: ˈ */
    public final C1505 mo1018() {
        return ˏʻ.ᵔʾ(new C0778(this.f15300.f1567, 10, new C3974(this, 0)));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public abstract C3978 mo1022();

    @Override // p322.AbstractC3967
    /* renamed from: ﹳٴ */
    public final C1505 mo1020() {
        return ˏʻ.ᵔʾ(new C0778(this.f15300.f1567, 10, new C3974(this, 1)));
    }
}
