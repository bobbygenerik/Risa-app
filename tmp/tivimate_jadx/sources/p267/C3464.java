package p267;

import android.os.Parcel;
import android.util.SparseIntArray;
import p035.AbstractC1220;
import p255.C3359;
import p255.C3368;

/* renamed from: ـˋ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3464 extends AbstractC3465 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f13608;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f13609;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final SparseIntArray f13610;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Parcel f13611;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f13612;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f13613;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f13614;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f13615;

    /* JADX WARN: Type inference failed for: r5v0, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r6v0, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r7v0, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C3464(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), "", new C3368(0), new C3368(0), new C3368(0));
    }

    public C3464(Parcel parcel, int i, int i2, String str, C3359 c3359, C3359 c33592, C3359 c33593) {
        super(c3359, c33592, c33593);
        this.f13610 = new SparseIntArray();
        this.f13608 = -1;
        this.f13612 = -1;
        this.f13611 = parcel;
        this.f13615 = i;
        this.f13613 = i2;
        this.f13609 = i;
        this.f13614 = str;
    }

    @Override // p267.AbstractC3465
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo7372(int i) {
        int i2 = this.f13608;
        SparseIntArray sparseIntArray = this.f13610;
        Parcel parcel = this.f13611;
        if (i2 >= 0) {
            int i3 = sparseIntArray.get(i2);
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i3);
            parcel.writeInt(dataPosition - i3);
            parcel.setDataPosition(dataPosition);
        }
        this.f13608 = i;
        sparseIntArray.put(i, parcel.dataPosition());
        parcel.writeInt(0);
        parcel.writeInt(i);
    }

    @Override // p267.AbstractC3465
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean mo7373(int i) {
        while (this.f13609 < this.f13613) {
            int i2 = this.f13612;
            if (i2 == i) {
                return true;
            }
            if (String.valueOf(i2).compareTo(String.valueOf(i)) > 0) {
                return false;
            }
            int i3 = this.f13609;
            Parcel parcel = this.f13611;
            parcel.setDataPosition(i3);
            int readInt = parcel.readInt();
            this.f13612 = parcel.readInt();
            this.f13609 += readInt;
        }
        return this.f13612 == i;
    }

    @Override // p267.AbstractC3465
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3464 mo7374() {
        Parcel parcel = this.f13611;
        int dataPosition = parcel.dataPosition();
        int i = this.f13609;
        if (i == this.f13615) {
            i = this.f13613;
        }
        return new C3464(parcel, dataPosition, i, AbstractC1220.m3775(new StringBuilder(), this.f13614, "  "), this.f13618, this.f13617, this.f13616);
    }
}
