package p428;

import android.media.Spatializer;
import android.media.Spatializer$OnSpatializerStateChangedListener;
import p017.AbstractC0955;

/* renamed from: ﹶʽ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5079 implements Spatializer$OnSpatializerStateChangedListener {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C5078 f19139;

    public C5079(C5078 c5078) {
        this.f19139 = c5078;
    }

    public final void onSpatializerAvailableChanged(Spatializer spatializer, boolean z) {
        AbstractC0955 abstractC0955 = C5078.f19130;
        this.f19139.m9986();
    }

    public final void onSpatializerEnabledChanged(Spatializer spatializer, boolean z) {
        AbstractC0955 abstractC0955 = C5078.f19130;
        this.f19139.m9986();
    }
}
