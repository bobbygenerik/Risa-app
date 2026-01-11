package p442;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.AbsSavedState;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ﹶᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5197 extends AbstractC3985 {
    public static final Parcelable.Creator<C5197> CREATOR = new C1288(9);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f19531;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f19532;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final boolean f19533;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean f19534;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final boolean f19535;

    public C5197(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f19531 = parcel.readInt();
        this.f19532 = parcel.readInt();
        this.f19535 = parcel.readInt() == 1;
        this.f19533 = parcel.readInt() == 1;
        this.f19534 = parcel.readInt() == 1;
    }

    public C5197(BottomSheetBehavior bottomSheetBehavior) {
        super(AbsSavedState.EMPTY_STATE);
        this.f19531 = bottomSheetBehavior.f2615;
        this.f19532 = bottomSheetBehavior.f2595;
        this.f19535 = bottomSheetBehavior.f2619;
        this.f19533 = bottomSheetBehavior.f2611;
        this.f19534 = bottomSheetBehavior.f2600;
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f19531);
        parcel.writeInt(this.f19532);
        parcel.writeInt(this.f19535 ? 1 : 0);
        parcel.writeInt(this.f19533 ? 1 : 0);
        parcel.writeInt(this.f19534 ? 1 : 0);
    }
}
