package p447;

import android.content.Context;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.AbstractBinderC0257;
import com.google.android.gms.internal.measurement.AbstractC0292;
import com.google.android.gms.internal.measurement.AbstractC0472;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p027.CallableC1098;
import p027.RunnableC1101;
import p179.RunnableC2689;
import p223.C3056;
import p296.AbstractC3659;
import p319.AbstractC3932;
import p319.C3934;
import p347.AbstractC4278;
import ʿי.ˎᐧ;

/* renamed from: ﹶﾞ.ʼـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC5223 extends AbstractBinderC0257 implements InterfaceC5260 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C5337 f19646;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Boolean f19647;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public String f19648;

    public BinderC5223(C5337 c5337) {
        super("com.google.android.gms.measurement.internal.IMeasurementService");
        AbstractC3659.m7687(c5337);
        this.f19646 = c5337;
        this.f19648 = null;
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo10218(C5217 c5217) {
        AbstractC3659.m7680(c5217.f19597);
        AbstractC3659.m7687(c5217.f19595);
        m10226(new RunnableC5231(this, c5217, 6));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final List mo10219(String str, String str2, String str3) {
        m10241(str, true);
        C5337 c5337 = this.f19646;
        try {
            return (List) c5337.mo10495().m10196(new CallableC5289(this, str, str2, str3, 3)).get();
        } catch (InterruptedException | ExecutionException e) {
            c5337.mo10494().f20343.m10216(e, "Failed to get conditional user properties as");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final List mo10220(String str, String str2, C5217 c5217) {
        m10231(c5217);
        String str3 = c5217.f19597;
        AbstractC3659.m7687(str3);
        C5337 c5337 = this.f19646;
        try {
            return (List) c5337.mo10495().m10196(new CallableC5289(this, str3, str, str2, 2)).get();
        } catch (InterruptedException | ExecutionException e) {
            c5337.mo10494().f20343.m10216(e, "Failed to get conditional user properties");
            return Collections.EMPTY_LIST;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r8v7, types: [com.google.android.gms.internal.measurement.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r8v9, types: [com.google.android.gms.internal.measurement.ʾᵎ] */
    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        List list;
        C5337 c5337 = this.f19646;
        ArrayList arrayList = null;
        InterfaceC5305 interfaceC5305 = null;
        InterfaceC5329 interfaceC5329 = null;
        switch (i) {
            case 1:
                C5279 c5279 = (C5279) AbstractC0472.m1912(parcel, C5279.CREATOR);
                C5217 c5217 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10229(c5279, c5217);
                parcel2.writeNoException();
                return true;
            case 2:
                C5241 c5241 = (C5241) AbstractC0472.m1912(parcel, C5241.CREATOR);
                C5217 c52172 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10234(c5241, c52172);
                parcel2.writeNoException();
                return true;
            case 3:
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
            case 22:
            case 23:
            case 28:
            default:
                return false;
            case 4:
                C5217 c52173 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10221(c52173);
                parcel2.writeNoException();
                return true;
            case 5:
                C5279 c52792 = (C5279) AbstractC0472.m1912(parcel, C5279.CREATOR);
                String readString = parcel.readString();
                parcel.readString();
                AbstractC0472.m1910(parcel);
                AbstractC3659.m7687(c52792);
                AbstractC3659.m7680(readString);
                m10241(readString, true);
                m10225(new RunnableC1101(this, c52792, readString, 9, false));
                parcel2.writeNoException();
                return true;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                C5217 c52174 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10227(c52174);
                parcel2.writeNoException();
                return true;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                C5217 c52175 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                ?? r6 = parcel.readInt() != 0;
                AbstractC0472.m1910(parcel);
                m10231(c52175);
                String str = c52175.f19597;
                AbstractC3659.m7687(str);
                try {
                    List<C5293> list2 = (List) c5337.mo10495().m10196(new CallableC5302(this, str, 0)).get();
                    ArrayList arrayList2 = new ArrayList(list2.size());
                    for (C5293 c5293 : list2) {
                        if (r6 == false && C5339.m10669(c5293.f19963)) {
                        }
                        arrayList2.add(new C5241(c5293));
                    }
                    arrayList = arrayList2;
                } catch (InterruptedException e) {
                    e = e;
                    c5337.mo10494().f20343.m10214(C5344.m10722(str), e, "Failed to get user properties. appId");
                    parcel2.writeNoException();
                    parcel2.writeTypedList(arrayList);
                    return true;
                } catch (ExecutionException e2) {
                    e = e2;
                    c5337.mo10494().f20343.m10214(C5344.m10722(str), e, "Failed to get user properties. appId");
                    parcel2.writeNoException();
                    parcel2.writeTypedList(arrayList);
                    return true;
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(arrayList);
                return true;
            case 9:
                C5279 c52793 = (C5279) AbstractC0472.m1912(parcel, C5279.CREATOR);
                String readString2 = parcel.readString();
                AbstractC0472.m1910(parcel);
                byte[] mo10233 = mo10233(readString2, c52793);
                parcel2.writeNoException();
                parcel2.writeByteArray(mo10233);
                return true;
            case 10:
                long readLong = parcel.readLong();
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                AbstractC0472.m1910(parcel);
                mo10230(readLong, readString3, readString4, readString5);
                parcel2.writeNoException();
                return true;
            case 11:
                C5217 c52176 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                String mo10236 = mo10236(c52176);
                parcel2.writeNoException();
                parcel2.writeString(mo10236);
                return true;
            case 12:
                C5287 c5287 = (C5287) AbstractC0472.m1912(parcel, C5287.CREATOR);
                C5217 c52177 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10237(c5287, c52177);
                parcel2.writeNoException();
                return true;
            case 13:
                C5287 c52872 = (C5287) AbstractC0472.m1912(parcel, C5287.CREATOR);
                AbstractC0472.m1910(parcel);
                AbstractC3659.m7687(c52872);
                AbstractC3659.m7687(c52872.f19944);
                AbstractC3659.m7680(c52872.f19945);
                m10241(c52872.f19945, true);
                m10225(new RunnableC2689(this, 29, new C5287(c52872)));
                parcel2.writeNoException();
                return true;
            case 14:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                ClassLoader classLoader = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                C5217 c52178 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                List mo10232 = mo10232(readString6, readString7, z, c52178);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo10232);
                return true;
            case 15:
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                String readString10 = parcel.readString();
                ClassLoader classLoader2 = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                AbstractC0472.m1910(parcel);
                List mo10224 = mo10224(readString8, readString9, readString10, z);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo10224);
                return true;
            case 16:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                C5217 c52179 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                List mo10220 = mo10220(readString11, readString12, c52179);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo10220);
                return true;
            case 17:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                String readString15 = parcel.readString();
                AbstractC0472.m1910(parcel);
                List mo10219 = mo10219(readString13, readString14, readString15);
                parcel2.writeNoException();
                parcel2.writeTypedList(mo10219);
                return true;
            case 18:
                C5217 c521710 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10238(c521710);
                parcel2.writeNoException();
                return true;
            case 19:
                Bundle bundle = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                C5217 c521711 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10242(bundle, c521711);
                parcel2.writeNoException();
                return true;
            case 20:
                C5217 c521712 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10240(c521712);
                parcel2.writeNoException();
                return true;
            case 21:
                C5217 c521713 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                C5222 mo10239 = mo10239(c521713);
                parcel2.writeNoException();
                if (mo10239 == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                mo10239.writeToParcel(parcel2, 1);
                return true;
            case 24:
                C5217 c521714 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                Bundle bundle2 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                AbstractC0472.m1910(parcel);
                m10231(c521714);
                String str2 = c521714.f19597;
                AbstractC3659.m7687(str2);
                if (c5337.m10639().m10577(null, AbstractC5321.f20110)) {
                    try {
                        list = (List) c5337.mo10495().m10198(new CallableC5234(this, c521714, bundle2, 0)).get(10000L, TimeUnit.MILLISECONDS);
                    } catch (InterruptedException | ExecutionException | TimeoutException e3) {
                        c5337.mo10494().f20343.m10214(C5344.m10722(str2), e3, "Failed to get trigger URIs. appId");
                        list = Collections.EMPTY_LIST;
                    }
                } else {
                    try {
                        list = (List) c5337.mo10495().m10196(new CallableC5234(this, c521714, bundle2, 1)).get();
                    } catch (InterruptedException | ExecutionException e4) {
                        c5337.mo10494().f20343.m10214(C5344.m10722(str2), e4, "Failed to get trigger URIs. appId");
                        list = Collections.EMPTY_LIST;
                    }
                }
                parcel2.writeNoException();
                parcel2.writeTypedList(list);
                return true;
            case 25:
                C5217 c521715 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10218(c521715);
                parcel2.writeNoException();
                return true;
            case 26:
                C5217 c521716 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10243(c521716);
                parcel2.writeNoException();
                return true;
            case 27:
                C5217 c521717 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10235(c521717);
                parcel2.writeNoException();
                return true;
            case 29:
                C5217 c521718 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                C5230 c5230 = (C5230) AbstractC0472.m1912(parcel, C5230.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
                    interfaceC5329 = queryLocalInterface instanceof InterfaceC5329 ? (InterfaceC5329) queryLocalInterface : new AbstractC0292(readStrongBinder, "com.google.android.gms.measurement.internal.IUploadBatchesCallback", 0);
                }
                AbstractC0472.m1910(parcel);
                mo10223(c521718, c5230, interfaceC5329);
                parcel2.writeNoException();
                return true;
            case 30:
                C5217 c521719 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                C5250 c5250 = (C5250) AbstractC0472.m1912(parcel, C5250.CREATOR);
                AbstractC0472.m1910(parcel);
                mo10222(c521719, c5250);
                parcel2.writeNoException();
                return true;
            case 31:
                C5217 c521720 = (C5217) AbstractC0472.m1912(parcel, C5217.CREATOR);
                Bundle bundle3 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
                    interfaceC5305 = queryLocalInterface2 instanceof InterfaceC5305 ? (InterfaceC5305) queryLocalInterface2 : new AbstractC0292(readStrongBinder2, "com.google.android.gms.measurement.internal.ITriggerUrisCallback", 0);
                }
                AbstractC0472.m1910(parcel);
                mo10228(c521720, bundle3, interfaceC5305);
                parcel2.writeNoException();
                return true;
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void mo10221(C5217 c5217) {
        m10231(c5217);
        m10225(new RunnableC5231(this, c5217, 0));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void mo10222(C5217 c5217, C5250 c5250) {
        m10231(c5217);
        m10225(new RunnableC1101(this, c5217, c5250, 11));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo10223(C5217 c5217, C5230 c5230, InterfaceC5329 interfaceC5329) {
        m10231(c5217);
        String str = c5217.f19597;
        AbstractC3659.m7687(str);
        this.f19646.mo10495().m10200(new ˎᐧ(this, str, c5230, interfaceC5329, 4));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final List mo10224(String str, String str2, String str3, boolean z) {
        m10241(str, true);
        C5337 c5337 = this.f19646;
        try {
            List<C5293> list = (List) c5337.mo10495().m10196(new CallableC5289(this, str, str2, str3, 1)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C5293 c5293 : list) {
                if (!z && C5339.m10669(c5293.f19963)) {
                }
                arrayList.add(new C5241(c5293));
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            c5337.mo10494().f20343.m10214(C5344.m10722(str), e, "Failed to get user properties as. appId");
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            c5337.mo10494().f20343.m10214(C5344.m10722(str), e, "Failed to get user properties as. appId");
            return Collections.EMPTY_LIST;
        }
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void m10225(Runnable runnable) {
        C5337 c5337 = this.f19646;
        if (c5337.mo10495().m10206()) {
            runnable.run();
        } else {
            c5337.mo10495().m10200(runnable);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10226(Runnable runnable) {
        C5337 c5337 = this.f19646;
        if (c5337.mo10495().m10206()) {
            runnable.run();
        } else {
            c5337.mo10495().m10204(runnable);
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo10227(C5217 c5217) {
        m10231(c5217);
        m10225(new RunnableC5231(this, c5217, 2));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo10228(C5217 c5217, Bundle bundle, InterfaceC5305 interfaceC5305) {
        m10231(c5217);
        String str = c5217.f19597;
        AbstractC3659.m7687(str);
        this.f19646.mo10495().m10200(new RunnableC5282(this, c5217, bundle, interfaceC5305, str));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void mo10229(C5279 c5279, C5217 c5217) {
        AbstractC3659.m7687(c5279);
        m10231(c5217);
        m10225(new RunnableC1101(this, c5279, c5217, 8, false));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo10230(long j, String str, String str2, String str3) {
        m10225(new RunnableC5315(this, str2, str3, str, j, 0));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10231(C5217 c5217) {
        AbstractC3659.m7687(c5217);
        String str = c5217.f19597;
        AbstractC3659.m7680(str);
        m10241(str, false);
        this.f19646.m10652().m10678(c5217.f19617);
    }

    @Override // p447.InterfaceC5260
    /* renamed from: יـ, reason: contains not printable characters */
    public final List mo10232(String str, String str2, boolean z, C5217 c5217) {
        m10231(c5217);
        String str3 = c5217.f19597;
        AbstractC3659.m7687(str3);
        C5337 c5337 = this.f19646;
        try {
            List<C5293> list = (List) c5337.mo10495().m10196(new CallableC5289(this, str3, str, str2, 0)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C5293 c5293 : list) {
                if (!z && C5339.m10669(c5293.f19963)) {
                }
                arrayList.add(new C5241(c5293));
            }
            return arrayList;
        } catch (InterruptedException e) {
            e = e;
            c5337.mo10494().f20343.m10214(C5344.m10722(str3), e, "Failed to query user properties. appId");
            return Collections.EMPTY_LIST;
        } catch (ExecutionException e2) {
            e = e2;
            c5337.mo10494().f20343.m10214(C5344.m10722(str3), e, "Failed to query user properties. appId");
            return Collections.EMPTY_LIST;
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final byte[] mo10233(String str, C5279 c5279) {
        AbstractC3659.m7680(str);
        AbstractC3659.m7687(c5279);
        m10241(str, true);
        C5337 c5337 = this.f19646;
        C5221 c5221 = c5337.mo10494().f20340;
        C5322 c5322 = c5337.f20305;
        C5286 c5286 = c5322.f20199;
        String str2 = c5279.f19912;
        c5221.m10216(c5286.m10473(str2), "Log and bundle. event");
        c5337.mo10493().getClass();
        long nanoTime = System.nanoTime() / 1000000;
        try {
            byte[] bArr = (byte[]) c5337.mo10495().m10198(new CallableC1098(this, c5279, str)).get();
            if (bArr == null) {
                c5337.mo10494().f20343.m10216(C5344.m10722(str), "Log and bundle returned null. appId");
                bArr = new byte[0];
            }
            c5337.mo10493().getClass();
            c5337.mo10494().f20340.m10215("Log and bundle processed. event, size, time_ms", c5322.f20199.m10473(str2), Integer.valueOf(bArr.length), Long.valueOf((System.nanoTime() / 1000000) - nanoTime));
            return bArr;
        } catch (InterruptedException e) {
            e = e;
            c5337.mo10494().f20343.m10215("Failed to log and bundle. appId, event, error", C5344.m10722(str), c5322.f20199.m10473(str2), e);
            return null;
        } catch (ExecutionException e2) {
            e = e2;
            c5337.mo10494().f20343.m10215("Failed to log and bundle. appId, event, error", C5344.m10722(str), c5322.f20199.m10473(str2), e);
            return null;
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void mo10234(C5241 c5241, C5217 c5217) {
        AbstractC3659.m7687(c5241);
        m10231(c5217);
        m10225(new RunnableC1101(this, c5241, c5217, 10, false));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void mo10235(C5217 c5217) {
        m10231(c5217);
        m10225(new RunnableC5231(this, c5217, 1));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final String mo10236(C5217 c5217) {
        m10231(c5217);
        C5337 c5337 = this.f19646;
        try {
            return (String) c5337.mo10495().m10196(new CallableC5302(c5337, c5217)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            c5337.mo10494().f20343.m10214(C5344.m10722(c5217.f19597), e, "Failed to get app instance id. appId");
            return null;
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void mo10237(C5287 c5287, C5217 c5217) {
        AbstractC3659.m7687(c5287);
        AbstractC3659.m7687(c5287.f19944);
        m10231(c5217);
        C5287 c52872 = new C5287(c5287);
        c52872.f19945 = c5217.f19597;
        m10225(new RunnableC1101(this, c52872, c5217, 7, false));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void mo10238(C5217 c5217) {
        String str = c5217.f19597;
        AbstractC3659.m7680(str);
        m10241(str, false);
        m10225(new RunnableC5231(this, c5217, 3));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C5222 mo10239(C5217 c5217) {
        m10231(c5217);
        String str = c5217.f19597;
        AbstractC3659.m7680(str);
        C5337 c5337 = this.f19646;
        try {
            return (C5222) c5337.mo10495().m10198(new CallableC5302(this, c5217, 1)).get(10000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            c5337.mo10494().f20343.m10214(C5344.m10722(str), e, "Failed to get consent. appId");
            return new C5222(null);
        }
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo10240(C5217 c5217) {
        AbstractC3659.m7680(c5217.f19597);
        AbstractC3659.m7687(c5217.f19595);
        m10226(new RunnableC5231(this, c5217, 4));
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m10241(String str, boolean z) {
        boolean isEmpty = TextUtils.isEmpty(str);
        C5337 c5337 = this.f19646;
        if (isEmpty) {
            c5337.mo10494().f20343.m10217("Measurement Service called without app package");
            throw new SecurityException("Measurement Service called without app package");
        }
        if (z) {
            try {
                if (this.f19647 == null) {
                    boolean z2 = true;
                    if (!"com.google.android.gms".equals(this.f19648) && !AbstractC4278.m8656(c5337.f20305.f20184, Binder.getCallingUid()) && !C3934.m8104(c5337.f20305.f20184).m8105(Binder.getCallingUid())) {
                        z2 = false;
                    }
                    this.f19647 = Boolean.valueOf(z2);
                }
                if (this.f19647.booleanValue()) {
                    return;
                }
            } catch (SecurityException e) {
                c5337.mo10494().f20343.m10216(C5344.m10722(str), "Measurement Service called with invalid calling package. appId");
                throw e;
            }
        }
        if (this.f19648 == null) {
            Context context = c5337.f20305.f20184;
            int callingUid = Binder.getCallingUid();
            int i = AbstractC3932.f15210;
            if (AbstractC4278.m8655(callingUid, context, str)) {
                this.f19648 = str;
            }
        }
        if (str.equals(this.f19648)) {
            return;
        }
        throw new SecurityException("Unknown calling package name '" + str + "'.");
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void mo10242(Bundle bundle, C5217 c5217) {
        m10231(c5217);
        String str = c5217.f19597;
        AbstractC3659.m7687(str);
        m10225(new ˎᐧ(this, bundle, str, c5217, 6));
    }

    @Override // p447.InterfaceC5260
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo10243(C5217 c5217) {
        AbstractC3659.m7680(c5217.f19597);
        AbstractC3659.m7687(c5217.f19595);
        m10226(new RunnableC5231(this, c5217, 5));
    }
}
