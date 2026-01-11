package p447;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.List;
import p121.AbstractC2026;
import p339.AbstractC4228;
import ﹳـ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʽᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5230 extends AbstractC4228 {
    public static final Parcelable.Creator<C5230> CREATOR = new ᵎﹶ(8);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final List f19666;

    public C5230(ArrayList arrayList) {
        this.f19666 = arrayList;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C5230 m10249(EnumC5270... enumC5270Arr) {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(enumC5270Arr[0].f19902));
        return new C5230(arrayList);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        List list = this.f19666;
        if (list != null) {
            int m50582 = AbstractC2026.m5058(parcel, 1);
            int size = list.size();
            parcel.writeInt(size);
            for (int i2 = 0; i2 < size; i2++) {
                parcel.writeInt(((Integer) list.get(i2)).intValue());
            }
            AbstractC2026.m5047(parcel, m50582);
        }
        AbstractC2026.m5047(parcel, m5058);
    }
}
