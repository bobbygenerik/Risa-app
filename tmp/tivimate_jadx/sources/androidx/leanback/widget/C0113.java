package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: androidx.leanback.widget.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0113 implements Parcelable.Creator {
    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.leanback.widget.ʽﹳ, java.lang.Object] */
    @Override // android.os.Parcelable.Creator
    public final Object createFromParcel(Parcel parcel) {
        ?? obj = new Object();
        obj.f861 = Bundle.EMPTY;
        obj.f860 = parcel.readInt();
        obj.f861 = parcel.readBundle(GridLayoutManager.class.getClassLoader());
        return obj;
    }

    @Override // android.os.Parcelable.Creator
    public final Object[] newArray(int i) {
        return new C0092[i];
    }
}
