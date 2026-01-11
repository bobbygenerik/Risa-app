package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.ⁱˊ;
import p389.C4629;

/* loaded from: classes.dex */
class MediaBrowserCompat$ItemReceiver extends C4629 {
    @Override // p389.C4629
    /* renamed from: ﹳٴ */
    public final void mo0(int i, Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(ⁱˊ.class.getClassLoader());
        }
        if (i != 0) {
            throw null;
        }
        if (bundle == null) {
            throw null;
        }
        if (!bundle.containsKey("media_item")) {
            throw null;
        }
        Parcelable parcelable = bundle.getParcelable("media_item");
        if (parcelable != null && !(parcelable instanceof MediaBrowserCompat$MediaItem)) {
            throw null;
        }
        throw null;
    }
}
