package p229;

import android.os.Parcel;
import android.os.Parcelable;
import ˋˋ.ᵎˊ;

/* renamed from: ˑʼ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3103 implements Parcelable {
    public static final Parcelable.Creator<C3103> CREATOR = new ᵎˊ(8);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f11819;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f11820;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final String f11821;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final boolean f11822;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean f11823;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean f11824;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f11825;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final boolean f11826;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final String f11827;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f11828;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f11829;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final boolean f11830;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final boolean f11831;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final int f11832;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final int f11833;

    public C3103(Parcel parcel) {
        this.f11820 = parcel.readString();
        this.f11828 = parcel.readString();
        this.f11819 = parcel.readInt() != 0;
        this.f11823 = parcel.readInt() != 0;
        this.f11829 = parcel.readInt();
        this.f11825 = parcel.readInt();
        this.f11827 = parcel.readString();
        this.f11824 = parcel.readInt() != 0;
        this.f11831 = parcel.readInt() != 0;
        this.f11826 = parcel.readInt() != 0;
        this.f11830 = parcel.readInt() != 0;
        this.f11832 = parcel.readInt();
        this.f11821 = parcel.readString();
        this.f11833 = parcel.readInt();
        this.f11822 = parcel.readInt() != 0;
    }

    public C3103(AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123) {
        this.f11820 = abstractComponentCallbacksC3123.getClass().getName();
        this.f11828 = abstractComponentCallbacksC3123.f11929;
        this.f11819 = abstractComponentCallbacksC3123.f11935;
        this.f11823 = abstractComponentCallbacksC3123.f11914;
        this.f11829 = abstractComponentCallbacksC3123.f11904;
        this.f11825 = abstractComponentCallbacksC3123.f11897;
        this.f11827 = abstractComponentCallbacksC3123.f11898;
        this.f11824 = abstractComponentCallbacksC3123.f11923;
        this.f11831 = abstractComponentCallbacksC3123.f11934;
        this.f11826 = abstractComponentCallbacksC3123.f11925;
        this.f11830 = abstractComponentCallbacksC3123.f11932;
        this.f11832 = abstractComponentCallbacksC3123.f11892.ordinal();
        this.f11821 = abstractComponentCallbacksC3123.f11905;
        this.f11833 = abstractComponentCallbacksC3123.f11933;
        this.f11822 = abstractComponentCallbacksC3123.f11901;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentState{");
        sb.append(this.f11820);
        sb.append(" (");
        sb.append(this.f11828);
        sb.append(")}:");
        if (this.f11819) {
            sb.append(" fromLayout");
        }
        if (this.f11823) {
            sb.append(" dynamicContainer");
        }
        int i = this.f11825;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.f11827;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.f11824) {
            sb.append(" retainInstance");
        }
        if (this.f11831) {
            sb.append(" removing");
        }
        if (this.f11826) {
            sb.append(" detached");
        }
        if (this.f11830) {
            sb.append(" hidden");
        }
        String str2 = this.f11821;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.f11833);
        }
        if (this.f11822) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11820);
        parcel.writeString(this.f11828);
        parcel.writeInt(this.f11819 ? 1 : 0);
        parcel.writeInt(this.f11823 ? 1 : 0);
        parcel.writeInt(this.f11829);
        parcel.writeInt(this.f11825);
        parcel.writeString(this.f11827);
        parcel.writeInt(this.f11824 ? 1 : 0);
        parcel.writeInt(this.f11831 ? 1 : 0);
        parcel.writeInt(this.f11826 ? 1 : 0);
        parcel.writeInt(this.f11830 ? 1 : 0);
        parcel.writeInt(this.f11832);
        parcel.writeString(this.f11821);
        parcel.writeInt(this.f11833);
        parcel.writeInt(this.f11822 ? 1 : 0);
    }
}
