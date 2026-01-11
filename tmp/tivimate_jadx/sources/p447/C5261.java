package p447;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.measurement.AbstractC0472;
import java.util.ArrayList;
import java.util.List;

/* renamed from: ﹶﾞ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5261 extends AbstractC0292 implements InterfaceC5260 {
    public C5261(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.internal.IMeasurementService", 0);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʻٴ */
    public final void mo10218(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 25);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʼʼ */
    public final List mo10219(String str, String str2, String str3) {
        Parcel m1305 = m1305();
        m1305.writeString(null);
        m1305.writeString(str2);
        m1305.writeString(str3);
        Parcel m1303 = m1303(m1305, 17);
        ArrayList createTypedArrayList = m1303.createTypedArrayList(C5287.CREATOR);
        m1303.recycle();
        return createTypedArrayList;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʼˎ */
    public final List mo10220(String str, String str2, C5217 c5217) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        AbstractC0472.m1911(m1305, c5217);
        Parcel m1303 = m1303(m1305, 16);
        ArrayList createTypedArrayList = m1303.createTypedArrayList(C5287.CREATOR);
        m1303.recycle();
        return createTypedArrayList;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʽʽ */
    public final void mo10221(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 4);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʾˋ */
    public final void mo10222(C5217 c5217, C5250 c5250) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        AbstractC0472.m1911(m1305, c5250);
        m1306(m1305, 30);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʾᵎ */
    public final void mo10223(C5217 c5217, C5230 c5230, InterfaceC5329 interfaceC5329) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        AbstractC0472.m1911(m1305, c5230);
        AbstractC0472.m1909(m1305, interfaceC5329);
        m1306(m1305, 29);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˆʾ */
    public final List mo10224(String str, String str2, String str3, boolean z) {
        Parcel m1305 = m1305();
        m1305.writeString(null);
        m1305.writeString(str2);
        m1305.writeString(str3);
        ClassLoader classLoader = AbstractC0472.f2228;
        m1305.writeInt(z ? 1 : 0);
        Parcel m1303 = m1303(m1305, 15);
        ArrayList createTypedArrayList = m1303.createTypedArrayList(C5241.CREATOR);
        m1303.recycle();
        return createTypedArrayList;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˉʿ */
    public final void mo10227(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 6);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˉˆ */
    public final void mo10228(C5217 c5217, Bundle bundle, InterfaceC5305 interfaceC5305) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        AbstractC0472.m1911(m1305, bundle);
        AbstractC0472.m1909(m1305, interfaceC5305);
        m1306(m1305, 31);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˊʻ */
    public final void mo10229(C5279 c5279, C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5279);
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 1);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˏי */
    public final void mo10230(long j, String str, String str2, String str3) {
        Parcel m1305 = m1305();
        m1305.writeLong(j);
        m1305.writeString(str);
        m1305.writeString(str2);
        m1305.writeString(str3);
        m1306(m1305, 10);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: יـ */
    public final List mo10232(String str, String str2, boolean z, C5217 c5217) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        ClassLoader classLoader = AbstractC0472.f2228;
        m1305.writeInt(z ? 1 : 0);
        AbstractC0472.m1911(m1305, c5217);
        Parcel m1303 = m1303(m1305, 14);
        ArrayList createTypedArrayList = m1303.createTypedArrayList(C5241.CREATOR);
        m1303.recycle();
        return createTypedArrayList;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ـˆ */
    public final byte[] mo10233(String str, C5279 c5279) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5279);
        m1305.writeString(str);
        Parcel m1303 = m1303(m1305, 9);
        byte[] createByteArray = m1303.createByteArray();
        m1303.recycle();
        return createByteArray;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴʼ */
    public final void mo10234(C5241 c5241, C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5241);
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 2);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴᵢ */
    public final void mo10235(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 27);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴﹶ */
    public final String mo10236(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        Parcel m1303 = m1303(m1305, 11);
        String readString = m1303.readString();
        m1303.recycle();
        return readString;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᴵˊ */
    public final void mo10237(C5287 c5287, C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5287);
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 12);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᴵᵔ */
    public final void mo10238(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 18);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵎˊ */
    public final C5222 mo10239(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        Parcel m1303 = m1303(m1305, 21);
        C5222 c5222 = (C5222) AbstractC0472.m1912(m1303, C5222.CREATOR);
        m1303.recycle();
        return c5222;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵔʾ */
    public final void mo10240(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 20);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵢˏ */
    public final void mo10242(Bundle bundle, C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, bundle);
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 19);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ﾞʻ */
    public final void mo10243(C5217 c5217) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c5217);
        m1306(m1305, 26);
    }
}
