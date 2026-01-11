package p044;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ʽˊ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1326 extends AbstractC3985 {
    public static final Parcelable.Creator<C1326> CREATOR = new C1288(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public CharSequence f5107;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f5108;

    public C1326(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f5107 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f5108 = parcel.readInt() == 1;
    }

    public final String toString() {
        return "TextInputLayout.SavedState{" + Integer.toHexString(System.identityHashCode(this)) + " error=" + ((Object) this.f5107) + "}";
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        TextUtils.writeToParcel(this.f5107, parcel, i);
        parcel.writeInt(this.f5108 ? 1 : 0);
    }
}
