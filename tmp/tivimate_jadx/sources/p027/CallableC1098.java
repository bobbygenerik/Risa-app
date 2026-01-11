package p027;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Parcel;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C0380;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0560;
import com.google.android.gms.internal.play_billing.C0566;
import com.google.android.gms.internal.play_billing.C0570;
import com.google.android.gms.internal.play_billing.C0574;
import com.google.android.gms.internal.play_billing.C0589;
import com.google.android.gms.internal.play_billing.C0590;
import com.google.android.gms.internal.play_billing.C0603;
import com.google.android.gms.internal.play_billing.C0639;
import com.google.android.gms.internal.play_billing.C0651;
import com.google.android.gms.internal.play_billing.InterfaceC0532;
import java.util.concurrent.Callable;
import p010.AbstractC0844;
import p355.C4335;
import p447.BinderC5223;
import p447.C5239;
import p447.C5279;
import p447.C5304;
import p447.C5337;

/* renamed from: ʼٴ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class CallableC1098 implements Callable {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4287;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4288;

    public /* synthetic */ CallableC1098(int i, Object obj) {
        this.f4288 = i;
        this.f4287 = obj;
    }

    public CallableC1098(BinderC5223 binderC5223, C5279 c5279, String str) {
        this.f4288 = 3;
        this.f4287 = binderC5223;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final Object m3484() {
        synchronized (((C4335) this.f4287)) {
            try {
                C4335 c4335 = (C4335) this.f4287;
                if (c4335.f16139 == null) {
                    return null;
                }
                c4335.m8798();
                if (((C4335) this.f4287).m8794()) {
                    ((C4335) this.f4287).m8795();
                    ((C4335) this.f4287).f16138 = 0;
                }
                return null;
            } finally {
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle;
        InterfaceC0532 interfaceC0532;
        int i;
        switch (this.f4288) {
            case 0:
                ServiceConnectionC1088 serviceConnectionC1088 = (ServiceConnectionC1088) this.f4287;
                C1111 c1111 = serviceConnectionC1088.f4246;
                synchronized (c1111.f4351) {
                    try {
                        if (c1111.f4353 != 3) {
                            boolean z = true;
                            boolean z2 = c1111.f4353 == 1;
                            if (TextUtils.isEmpty(null)) {
                                bundle = null;
                            } else {
                                bundle = new Bundle();
                                bundle.putString("accountName", null);
                                AbstractC0542.m2098(c1111.f4350.longValue(), bundle, c1111.f4330, c1111.f4336);
                            }
                            synchronized (c1111.f4351) {
                                interfaceC0532 = c1111.f4339;
                            }
                            if (interfaceC0532 == null) {
                                C1111 c11112 = serviceConnectionC1088.f4246;
                                c11112.m3499(0);
                                int i2 = serviceConnectionC1088.f4244;
                                C1115 c1115 = AbstractC1093.f4262;
                                c11112.m3520(107, i2, c1115);
                                serviceConnectionC1088.m3444(c1115);
                            } else {
                                C1111 c11113 = serviceConnectionC1088.f4246;
                                String packageName = c11113.f4338.getPackageName();
                                int i3 = 3;
                                int i4 = 25;
                                while (true) {
                                    if (i4 >= 3) {
                                        if (bundle == null) {
                                            try {
                                                C0639 c0639 = (C0639) interfaceC0532;
                                                Parcel m1307 = c0639.m1307();
                                                m1307.writeInt(i4);
                                                m1307.writeString(packageName);
                                                m1307.writeString("subs");
                                                Parcel m1304 = c0639.m1304(m1307, 1);
                                                int readInt = m1304.readInt();
                                                m1304.recycle();
                                                i3 = readInt;
                                            } catch (Exception e) {
                                                AbstractC0542.m2091("BillingClient", "Exception while checking if billing is supported; try to reconnect", e);
                                                boolean z3 = e instanceof DeadObjectException;
                                                int i5 = z3 ? 91 : e instanceof RemoteException ? 90 : e instanceof SecurityException ? 92 : 42;
                                                String m3493 = AbstractC0844.m3021(i5, 42) ? AbstractC1104.m3493(e) : null;
                                                serviceConnectionC1088.f4246.m3499(0);
                                                serviceConnectionC1088.m3445(z3 ? AbstractC1093.f4262 : AbstractC1093.f4270, i5, m3493, z2);
                                                serviceConnectionC1088.m3444(z3 ? AbstractC1093.f4262 : AbstractC1093.f4270);
                                            }
                                        } else {
                                            i3 = ((C0639) interfaceC0532).m2250(i4, packageName, "subs", bundle);
                                        }
                                        if (i3 == 0) {
                                            AbstractC0542.m2096("BillingClient", "highestLevelSupportedForSubs: " + i4);
                                        } else {
                                            i4--;
                                        }
                                    } else {
                                        i4 = 0;
                                    }
                                }
                                c11113.f4354 = i4 >= 3;
                                if (i4 < 3) {
                                    AbstractC0542.m2096("BillingClient", "In-app billing API does not support subscription on this device.");
                                    i = 9;
                                } else {
                                    i = 1;
                                }
                                int i6 = i3;
                                int i7 = 25;
                                while (true) {
                                    if (i7 >= 3) {
                                        if (bundle == null) {
                                            C0639 c06392 = (C0639) interfaceC0532;
                                            Parcel m13072 = c06392.m1307();
                                            m13072.writeInt(i7);
                                            m13072.writeString(packageName);
                                            m13072.writeString("inapp");
                                            Parcel m13042 = c06392.m1304(m13072, 1);
                                            i6 = m13042.readInt();
                                            m13042.recycle();
                                        } else {
                                            i6 = ((C0639) interfaceC0532).m2250(i7, packageName, "inapp", bundle);
                                        }
                                        if (i6 == 0) {
                                            c11113.f4356 = i7;
                                            AbstractC0542.m2096("BillingClient", "mHighestLevelSupportedForInApp: " + i7);
                                        } else {
                                            i7--;
                                        }
                                    }
                                }
                                int i8 = c11113.f4356;
                                c11113.f4356 = i8;
                                c11113.f4332 = i8 >= 26;
                                c11113.f4348 = i8 >= 24;
                                c11113.f4334 = i8 >= 21;
                                c11113.f4355 = i8 >= 20;
                                c11113.f4329 = i8 >= 19;
                                c11113.f4335 = i8 >= 17;
                                c11113.f4344 = i8 >= 16;
                                c11113.f4328 = i8 >= 15;
                                c11113.f4333 = i8 >= 14;
                                c11113.f4342 = i8 >= 9;
                                c11113.f4343 = i8 >= 6;
                                if (i8 < 3) {
                                    AbstractC0542.m2097("BillingClient", "In-app billing API version 3 is not supported on this device.");
                                    i = 36;
                                }
                                C1111.m3495(c11113, i6);
                                if (i6 != 0) {
                                    C1115 c11152 = AbstractC1093.f4272;
                                    serviceConnectionC1088.m3445(c11152, i, null, z2);
                                    serviceConnectionC1088.m3444(c11152);
                                } else {
                                    try {
                                        Long m3446 = serviceConnectionC1088.m3446(z2);
                                        if (z2) {
                                            C0603 m2308 = C0651.m2308();
                                            m2308.m2174();
                                            C0651.m2310((C0651) m2308.f2387, 6);
                                            C0589 m2162 = C0574.m2162();
                                            int i9 = serviceConnectionC1088.f4244;
                                            if (i9 <= 0) {
                                                z = false;
                                            }
                                            m2162.m2181(z);
                                            m2162.m2182(i9);
                                            if (m3446 != null) {
                                                long longValue = m3446.longValue();
                                                m2162.m2174();
                                                C0574.m2158((C0574) m2162.f2387, longValue);
                                            }
                                            C1111 c11114 = serviceConnectionC1088.f4246;
                                            m2308.m2174();
                                            C0651.m2309((C0651) m2308.f2387, (C0574) m2162.m2176());
                                            c11114.m3521((C0651) m2308.m2176());
                                        } else {
                                            C0560 m2183 = C0590.m2183();
                                            C0566 m2140 = C0570.m2140();
                                            m2140.m2174();
                                            C0570.m2143((C0570) m2140.f2387, 0);
                                            m2183.m2174();
                                            C0590.m2185((C0590) m2183.f2387, (C0570) m2140.m2176());
                                            if (m3446 != null) {
                                                long longValue2 = m3446.longValue();
                                                m2183.m2174();
                                                C0590.m2184((C0590) m2183.f2387, longValue2);
                                            }
                                            serviceConnectionC1088.f4246.f4352.ᵎˊ((C0590) m2183.m2176());
                                        }
                                    } catch (Throwable th) {
                                        AbstractC0542.m2091("BillingClient", "Unable to log.", th);
                                    }
                                    serviceConnectionC1088.m3444(AbstractC1093.f4259);
                                }
                            }
                        }
                    } finally {
                    }
                }
                return null;
            case 1:
                return m3484();
            case 2:
                return new C0380(((C5304) this.f4287).f20002);
            default:
                BinderC5223 binderC5223 = (BinderC5223) this.f4287;
                binderC5223.f19646.m10649();
                C5239 c5239 = binderC5223.f19646.f20285;
                C5337.m10599(c5239);
                c5239.ⁱᴵ();
                throw new IllegalStateException("Unexpected call on client side");
        }
    }
}
