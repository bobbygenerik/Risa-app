package p055;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;
import java.util.UUID;
import p035.AbstractC1220;
import p305.AbstractC3712;

/* renamed from: ʽⁱ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1461 implements Parcelable {
    public static final Parcelable.Creator<C1461> CREATOR = new C1496(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f5698;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f5699;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f5700;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final UUID f5701;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final byte[] f5702;

    public C1461(Parcel parcel) {
        this.f5701 = new UUID(parcel.readLong(), parcel.readLong());
        this.f5698 = parcel.readString();
        String readString = parcel.readString();
        String str = AbstractC3712.f14481;
        this.f5700 = readString;
        this.f5702 = parcel.createByteArray();
    }

    public C1461(UUID uuid, String str, String str2, byte[] bArr) {
        uuid.getClass();
        this.f5701 = uuid;
        this.f5698 = str;
        str2.getClass();
        this.f5700 = AbstractC1464.m4251(str2);
        this.f5702 = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C1461)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        C1461 c1461 = (C1461) obj;
        return Objects.equals(this.f5698, c1461.f5698) && Objects.equals(this.f5700, c1461.f5700) && Objects.equals(this.f5701, c1461.f5701) && Arrays.equals(this.f5702, c1461.f5702);
    }

    public final int hashCode() {
        if (this.f5699 == 0) {
            int hashCode = this.f5701.hashCode() * 31;
            String str = this.f5698;
            this.f5699 = Arrays.hashCode(this.f5702) + AbstractC1220.m3780((hashCode + (str == null ? 0 : str.hashCode())) * 31, 31, this.f5700);
        }
        return this.f5699;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        UUID uuid = this.f5701;
        parcel.writeLong(uuid.getMostSignificantBits());
        parcel.writeLong(uuid.getLeastSignificantBits());
        parcel.writeString(this.f5698);
        parcel.writeString(this.f5700);
        parcel.writeByteArray(this.f5702);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m4248(UUID uuid) {
        UUID uuid2 = AbstractC1489.f5847;
        UUID uuid3 = this.f5701;
        return uuid2.equals(uuid3) || uuid.equals(uuid3);
    }
}
