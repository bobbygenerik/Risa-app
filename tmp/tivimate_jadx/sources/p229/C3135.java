package p229;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;
import ˋˋ.ᵎˊ;

/* renamed from: ˑʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3135 implements Parcelable {
    public static final Parcelable.Creator<C3135> CREATOR = new ᵎˊ(4);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int[] f11978;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int[] f11979;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ArrayList f11980;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int[] f11981;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final int f11982;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final String f11983;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final int f11984;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f11985;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f11986;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f11987;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final CharSequence f11988;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final CharSequence f11989;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final ArrayList f11990;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final boolean f11991;

    public C3135(Parcel parcel) {
        this.f11979 = parcel.createIntArray();
        this.f11986 = parcel.createStringArrayList();
        this.f11978 = parcel.createIntArray();
        this.f11981 = parcel.createIntArray();
        this.f11987 = parcel.readInt();
        this.f11983 = parcel.readString();
        this.f11985 = parcel.readInt();
        this.f11982 = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.f11989 = (CharSequence) creator.createFromParcel(parcel);
        this.f11984 = parcel.readInt();
        this.f11988 = (CharSequence) creator.createFromParcel(parcel);
        this.f11990 = parcel.createStringArrayList();
        this.f11980 = parcel.createStringArrayList();
        this.f11991 = parcel.readInt() != 0;
    }

    public C3135(C3137 c3137) {
        int size = c3137.f12011.size();
        this.f11979 = new int[size * 6];
        if (!c3137.f12006) {
            throw new IllegalStateException("Not on back stack");
        }
        this.f11986 = new ArrayList(size);
        this.f11978 = new int[size];
        this.f11981 = new int[size];
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            C3074 c3074 = (C3074) c3137.f12011.get(i2);
            int i3 = i + 1;
            this.f11979[i] = c3074.f11689;
            ArrayList arrayList = this.f11986;
            AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c3074.f11688;
            arrayList.add(abstractComponentCallbacksC3123 != null ? abstractComponentCallbacksC3123.f11929 : null);
            int[] iArr = this.f11979;
            iArr[i3] = c3074.f11683 ? 1 : 0;
            iArr[i + 2] = c3074.f11684;
            iArr[i + 3] = c3074.f11685;
            int i4 = i + 5;
            iArr[i + 4] = c3074.f11690;
            i += 6;
            iArr[i4] = c3074.f11686;
            this.f11978[i2] = c3074.f11687.ordinal();
            this.f11981[i2] = c3074.f11682.ordinal();
        }
        this.f11987 = c3137.f12014;
        this.f11983 = c3137.f11995;
        this.f11985 = c3137.f12002;
        this.f11982 = c3137.f11998;
        this.f11989 = c3137.f12005;
        this.f11984 = c3137.f12013;
        this.f11988 = c3137.f12000;
        this.f11990 = c3137.f12007;
        this.f11980 = c3137.f12001;
        this.f11991 = c3137.f11996;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f11979);
        parcel.writeStringList(this.f11986);
        parcel.writeIntArray(this.f11978);
        parcel.writeIntArray(this.f11981);
        parcel.writeInt(this.f11987);
        parcel.writeString(this.f11983);
        parcel.writeInt(this.f11985);
        parcel.writeInt(this.f11982);
        TextUtils.writeToParcel(this.f11989, parcel, 0);
        parcel.writeInt(this.f11984);
        TextUtils.writeToParcel(this.f11988, parcel, 0);
        parcel.writeStringList(this.f11990);
        parcel.writeStringList(this.f11980);
        parcel.writeInt(this.f11991 ? 1 : 0);
    }
}
