package android.support.v4.media;

import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.media.session.ⁱˊ;
import java.util.ArrayList;
import p389.C4629;

/* loaded from: classes.dex */
class MediaBrowserCompat$SearchResultReceiver extends C4629 {
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
        if (!bundle.containsKey("search_results")) {
            throw null;
        }
        Parcelable[] parcelableArray = bundle.getParcelableArray("search_results");
        if (parcelableArray == null) {
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : parcelableArray) {
            arrayList.add((MediaBrowserCompat$MediaItem) parcelable);
        }
        throw null;
    }
}
