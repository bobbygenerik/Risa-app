package p357;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.sidesheet.SideSheetBehavior;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ᵔˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4346 extends AbstractC3985 {
    public static final Parcelable.Creator<C4346> CREATOR = new C1288(8);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f16167;

    public C4346(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f16167 = parcel.readInt();
    }

    public C4346(SideSheetBehavior sideSheetBehavior) {
        super(AbsSavedState.EMPTY_STATE);
        this.f16167 = sideSheetBehavior.f2824;
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f16167);
    }
}
